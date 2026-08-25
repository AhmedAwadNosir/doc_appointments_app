import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/features/sign_up/data/models/sign_up_request_body_modal.dart';
import 'package:doc_appointments_app/features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc_appointments_app/features/sign_up/data/repos/sign_up_repo_impl.dart';
import 'package:doc_appointments_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepoImpl signUpRepoImpl;
  SignUpCubit({required this.signUpRepoImpl}) : super(SignUpState.initial());
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameTextEditingControler =
      TextEditingController();
  final TextEditingController phoneTextEditingControler =
      TextEditingController();
  final TextEditingController emailTextEditingControler =
      TextEditingController();
  final TextEditingController passwordTextEditingControler =
      TextEditingController();
  final TextEditingController confarmationPasswordTextEditingControler =
      TextEditingController();
  Future<void> emitSignUpStates() async {
    emit(SignUpState.loading());
    final response = await signUpRepoImpl.signUp(
      signUpRequestBodyModal: SignUpRequestBodyModal(
        name: nameTextEditingControler.text,
        phone: phoneTextEditingControler.text,
        email: emailTextEditingControler.text,
        password: passwordTextEditingControler.text,
        passwordConfirmation: confarmationPasswordTextEditingControler.text,
        gender: "0",
      ),
    );
    response.when(
      success: (signUpResponse) {
        emit(SignUpState.success(signUpResponse));
      },
      failure: (apiErrorModal) {
        emit(SignUpState.error(apiErrorModal.getAllErrorsMessages()));
      },
    );
  }
}
