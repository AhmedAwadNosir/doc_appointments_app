import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/core/networking/api_service.dart';
import 'package:doc_appointments_app/features/login/data/models/login_response.dart';
import 'package:doc_appointments_app/features/sign_up/data/models/sign_up_request_body_modal.dart';
import 'package:doc_appointments_app/features/sign_up/data/models/sign_up_response.dart';

abstract class SignUpRepo {
  Future<ApiReslut<SignUpResponse>> signUp({
    required SignUpRequestBodyModal signUpRequestBodyModal,
  });
}
