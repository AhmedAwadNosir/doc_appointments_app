import 'package:bloc/bloc.dart';
import 'package:doc_appointments_app/core/helpers/app_constans.dart';
import 'package:doc_appointments_app/core/helpers/shared_pref_helper.dart';
import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/features/login/data/models/login_request_body.dart';
import 'package:doc_appointments_app/features/login/data/repos/login_repo_impl.dart';
import 'package:doc_appointments_app/features/login/functions/save_token_after_login.dart';
import 'package:doc_appointments_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepoImpl loginRepoImpl;
  LoginCubit({required this.loginRepoImpl}) : super(LoginState.initial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailTextEditingControler =
      TextEditingController();
  final TextEditingController passwordTextEditingControler =
      TextEditingController();
  Future<void> emitLoginStates() async {
    emit(LoginState.loading());
    var response = await loginRepoImpl.login(
      loginRequstBody: LoginRequestBody(
        email: emailTextEditingControler.text,
        password: passwordTextEditingControler.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        await saveTokenAfterLogin(
          key: AppConstans.userToken,
          token: loginResponse.userData?.token ?? '',
        );

        emit(LoginState.success(loginResponse));
      },
      failure: (failure) {
        emit(LoginState.error(failure.apiErrorModel.message ?? ""));
      },
    );
  }
}
