import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:doc_appointments_app/features/onboarding/ui/widgets/app_logo_and_name.dart';
import 'package:doc_appointments_app/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:doc_appointments_app/features/onboarding/ui/widgets/onboarding_doctor_image_and_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30, bottom: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppLogoAndName(),
                SizedBox(height: 50.h),
                OnboardingDoctorImageAndTitle(),
                // SizedBox(height: 30.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 33),
                  child: Column(
                    children: [
                      Text(
                        "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                        textAlign: TextAlign.center,
                        style: FontStyls.font13GreyNormal(),
                      ),
                      SizedBox(height: 30.h),
                      GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
