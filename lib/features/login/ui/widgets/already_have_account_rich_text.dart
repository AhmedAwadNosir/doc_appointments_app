import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountRichText extends StatelessWidget {
  const AlreadyHaveAccountRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: " Don`t have an account yet? ",
            style: FontStyls.font11GreyRegular().copyWith(color: Colors.black),
          ),
          TextSpan(
            text: "Sign Up",
            style: FontStyls.font11GreyRegular().copyWith(
              color: ColorManager.primaryColorBlue,
            ),
          ),
        ],
      ),
    );
  }
}
