import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:doc_appointments_app/core/widgets/app_text_button.dart';
import 'package:doc_appointments_app/core/widgets/app_text_form_field.dart';
import 'package:doc_appointments_app/features/login/ui/widgets/already_have_account_rich_text.dart';
import 'package:doc_appointments_app/features/login/ui/widgets/privacy_and_terms_condtiond.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey formKey = GlobalKey<FormState>();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Welcome Back", style: FontStyls.font24mainBlueBold()),
                  verticalSpacing(height: 8),
                  Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style: FontStyls.font14GreyRegular(),
                  ),
                  verticalSpacing(height: 36),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        AppTextFormField(hintText: "Email"),
                        verticalSpacing(height: 16),
                        AppTextFormField(
                          hintText: "Password",
                          obscureText: obscureText,
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            child: Icon(
                              obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                        ),
                        verticalSpacing(height: 24),
                        Align(
                          alignment: AlignmentGeometry.centerEnd,
                          child: Text(
                            "Forgot Password?",
                            style: FontStyls.font12MainblueRegular(),
                          ),
                        ),
                        verticalSpacing(height: 40),
                        AppTextButton(buttonText: "Login"),
                        verticalSpacing(height: 16),
                        PrivacyAndTermsCondtiond(),
                        verticalSpacing(height: 60),
                        AlreadyHaveAccountRichText(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
