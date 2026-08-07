import 'package:doc_appointments_app/core/helpers/app_images.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppLogoAndName extends StatelessWidget {
  const AppLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.applogo),
        SizedBox(width: 10.w),
        Text("DocDoc", style: FontStyls.font24BlacBold()),
      ],
    );
  }
}
