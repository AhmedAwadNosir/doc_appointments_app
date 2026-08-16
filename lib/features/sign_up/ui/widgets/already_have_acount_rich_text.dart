import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:doc_appointments_app/core/routing/routes.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:doc_appointments_app/features/login/ui/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountRichText extends StatelessWidget {
  const AlreadyHaveAccountRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "already have an account yet? ",
            style: FontStyls.font11GreyRegular().copyWith(color: Colors.black),
          ),
          TextSpan(
            text: "Sign In",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
            style: FontStyls.font11GreyRegular().copyWith(
              color: ColorManager.primaryColorBlue,
            ),
          ),
        ],
      ),
    );
  }
}
