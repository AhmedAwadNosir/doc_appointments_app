import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class FontStyls {
  static TextStyle font32MainBlueBold() {
    return TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeight.bold,
      color: ColorManager.primaryColorBlue,
    );
  }

  static TextStyle font13GreyNormal() {
    return TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeight.normal,
      color: ColorManager.secondryColorGrey,
    );
  }

  static TextStyle font16Whight600() {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  static TextStyle font24BlacBold() {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
  }
}
