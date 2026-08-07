import 'package:doc_appointments_app/core/helpers/app_images.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';

class OnboardingDoctorImageAndTitle extends StatelessWidget {
  const OnboardingDoctorImageAndTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        Image.asset(AppImages.onboardingBackgroundLogoWithObacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white, Colors.white.withValues(alpha: 0.0)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.14, 0.4],
            ),
          ),
          child: Image.asset(AppImages.onboardingDoctorImagee),
        ),
        Positioned(
          bottom: 30,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: FontStyls.font32MainBlueBold().copyWith(fontSize: 36),
          ),
        ),
      ],
    );
  }
}
