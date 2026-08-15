import 'package:bloc/bloc.dart';
import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/features/login/data/models/login_request_body.dart';
import 'package:doc_appointments_app/features/login/data/repos/login_repo_impl.dart';
import 'package:doc_appointments_app/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepoImpl loginRepoImpl;
  LoginCubit({required this.loginRepoImpl}) : super(LoginState.initial());

  Future<void> emitLoginStates({
    required LoginRequestBody loginRequstBody,
  }) async {
    emit(LoginState.loading());
    var response = await loginRepoImpl.login(loginRequstBody: loginRequstBody);
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (failure) {
        emit(LoginState.error(failure.apiErrorModel.message ?? ""));
      },
    );
  }
}
