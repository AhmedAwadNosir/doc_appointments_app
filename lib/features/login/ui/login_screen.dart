import 'package:doc_appointments_app/features/login/ui/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(child: Scaffold(body: LoginViewBody())),
    );
  }
}
