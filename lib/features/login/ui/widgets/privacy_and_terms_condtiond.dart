import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';

class PrivacyAndTermsCondtiond extends StatelessWidget {
  const PrivacyAndTermsCondtiond({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our",
            style: FontStyls.font11GreyRegular(),
          ),
          TextSpan(
            text: " Terms & Conditions",
            style: FontStyls.font11GreyRegular().copyWith(color: Colors.black),
          ),
          TextSpan(text: " and\n", style: FontStyls.font11GreyRegular()),
          TextSpan(
            text: " PrivacyPolicy",
            style: FontStyls.font11GreyRegular().copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
