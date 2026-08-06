import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("login Screen"),
          backgroundColor: ColorManager.primaryColorBlue,
        ),
        body: Center(
          child: Text(
            "Login screen is active",
            style: FontStyls.font13GreyNormal(),
          ),
        ),
      ),
    );
  }
}
