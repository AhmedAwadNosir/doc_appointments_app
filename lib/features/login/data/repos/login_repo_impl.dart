import 'package:doc_appointments_app/core/networking/api_error_handler.dart';
import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/core/networking/api_service.dart';
import 'package:doc_appointments_app/features/login/data/models/login_request_body.dart';
import 'package:doc_appointments_app/features/login/data/models/login_response.dart';
import 'package:doc_appointments_app/features/login/data/repos/login_repo.dart';

class LoginRepoImpl extends LoginRepo {
  final ApiService _apiService;

  LoginRepoImpl({required ApiService apiService}) : _apiService = apiService;

  @override
  Future<ApiReslut<LoginResponse>> login({
    required LoginRequestBody loginRequstBody,
  }) async {
    try {
      var response = await _apiService.login(loginRequstBody);
      return ApiReslut.success(response);
    } catch (error) {
      return ApiReslut.failure(ErrorHandler.handle(error));
    }
  }
}
