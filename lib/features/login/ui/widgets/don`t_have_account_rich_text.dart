import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:doc_appointments_app/core/routing/routes.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAccountRichText extends StatelessWidget {
  const DontHaveAccountRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: " Don`t have an account yet? ",
            style: FontStyls.font11GreyRegular().copyWith(color: Colors.black),
          ),
          TextSpan(
            text: "Sign Up",
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.signUpScreen);
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
