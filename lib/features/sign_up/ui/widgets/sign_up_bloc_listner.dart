import 'package:doc_appointments_app/core/functions/setup_error_state.dart';
import 'package:doc_appointments_app/core/functions/show_succes_dialog.dart';
import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:doc_appointments_app/features/sign_up/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListner extends StatelessWidget {
  const SignUpBlocListner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
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
            showSuccessDialog(context);
          },
          error: (value) {
            setupErrorState(context, value.errorMessage);
          },
        );
      },
      child: Container(),
    );
  }
}
