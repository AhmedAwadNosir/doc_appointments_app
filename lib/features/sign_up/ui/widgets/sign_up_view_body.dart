import 'package:doc_appointments_app/features/sign_up/ui/widgets/already_have_acount_rich_text.dart';
import 'package:doc_appointments_app/features/sign_up/ui/widgets/sign_up_bloc_listner.dart';
import 'package:doc_appointments_app/features/sign_up/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:doc_appointments_app/features/login/ui/widgets/don%60t_have_account_rich_text.dart';

import 'package:doc_appointments_app/features/login/ui/widgets/privacy_and_terms_condtiond.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: Column(
          children: [
            Row(
              children: [
                Text("Create Account", style: FontStyls.font24mainBlueBold()),
              ],
            ),
            verticalSpacing(height: 8),
            Text(
              "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!.",
              style: FontStyls.font14GreyRegular(),
            ),
            verticalSpacing(height: 36),
            SignUpForm(),
            verticalSpacing(height: 16),
            PrivacyAndTermsCondtiond(),
            verticalSpacing(height: 30),
            AlreadyHaveAccountRichText(),
            SignUpBlocListner(),
          ],
        ),
      ),
    );
  }
}
