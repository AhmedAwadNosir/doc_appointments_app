import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/routing/app_router.dart';
import 'package:doc_appointments_app/core/routing/routes.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:doc_appointments_app/core/widgets/app_text_button.dart';
import 'package:doc_appointments_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_appointments_app/features/login/ui/widgets/already_have_account_rich_text.dart';
import 'package:doc_appointments_app/features/login/ui/widgets/email_and_password_form.dart';
import 'package:doc_appointments_app/features/login/ui/widgets/login_bloc_listner.dart';
import 'package:doc_appointments_app/features/login/ui/widgets/privacy_and_terms_condtiond.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  EmailAndPasswordForm(),

                  verticalSpacing(height: 16),
                  PrivacyAndTermsCondtiond(),
                  verticalSpacing(height: 60),
                  AlreadyHaveAccountRichText(),
                  LoginBlocListner(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
