import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class FontStyls {
  static TextStyle font32MainBlueBold() {
    return TextStyle(
      fontSize: 32.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorManager.primaryColorBlue,
    );
  }

  static TextStyle font13GreyRegular() {
    return TextStyle(
      fontSize: 13.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorManager.secondryColorGrey,
    );
  }

  static TextStyle font11GreyRegular() {
    return TextStyle(
      fontSize: 11.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorManager.privacytextGrey,
    );
  }

  static TextStyle font12MainblueRegular() {
    return TextStyle(
      fontSize: 12.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorManager.primaryColorBlue,
    );
  }

  static TextStyle font14GreyRegular() {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.regular,
      color: ColorManager.secondryColorGrey,
    );
  }

  static TextStyle font14LieghtGreyMeduim() {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorManager.lieghtGrey,
    );
  }

  static TextStyle font14BlueSemiBold() {
    return TextStyle(
      fontSize: 14.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: ColorManager.primaryColorBlue,
    );
  }

  static TextStyle font15DarkBlueMedium() {
    return TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeightHelper.medium,
      color: ColorManager.darkBlue,
    );
  }

  static TextStyle font16WhightsemiBold() {
    return TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeightHelper.semiBold,
      color: Colors.white,
    );
  }

  static TextStyle font24BlacBold() {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: Colors.black,
    );
  }

  static TextStyle font24mainBlueBold() {
    return TextStyle(
      fontSize: 24.sp,
      fontWeight: FontWeightHelper.bold,
      color: ColorManager.primaryColorBlue,
    );
  }
}
