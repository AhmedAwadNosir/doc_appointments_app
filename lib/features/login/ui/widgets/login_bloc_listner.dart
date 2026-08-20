import 'package:doc_appointments_app/core/functions/setup_error_state.dart';
import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:doc_appointments_app/core/routing/routes.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointments_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListner extends StatelessWidget {
  const LoginBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.mapOrNull(
          loading: (value) {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorManager.primaryColorBlue,
                ),
              ),
            );
          },
          success: (value) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (value) {
            setupErrorState(context, value.errorMessage);
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }
}
