import 'package:doc_appointments_app/core/networking/api_error_handler.dart';
import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/core/networking/api_service.dart';
import 'package:doc_appointments_app/features/sign_up/data/models/sign_up_request_body_modal.dart';
import 'package:doc_appointments_app/features/sign_up/data/models/sign_up_response.dart';
import 'package:doc_appointments_app/features/sign_up/data/repos/sign_up_repo.dart';

class SignUpRepoImpl extends SignUpRepo {
  final ApiService _apiService;

  SignUpRepoImpl({required ApiService apiService}) : _apiService = apiService;
  @override
  Future<ApiReslut<SignUpResponse>> signUp({
    required SignUpRequestBodyModal signUpRequestBodyModal,
  }) async {
    try {
      var response = await _apiService.signUP(signUpRequestBodyModal);
      return ApiReslut.success(response);
    } catch (error) {
      return ApiReslut.failure(ApiErrorHandler.handle(error));
    }
  }
}
