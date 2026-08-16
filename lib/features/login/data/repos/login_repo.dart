import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/features/login/data/models/login_request_body.dart';
import 'package:doc_appointments_app/features/login/data/models/login_response.dart';

abstract class LoginRepo {
  Future<ApiReslut<LoginResponse>> login({
    required LoginRequestBody loginRequstBody,
  });
}
