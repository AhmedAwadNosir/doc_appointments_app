import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.backgroundColor,
    this.contentPadding,
    this.enabledBorder,
    this.focusedBorder,
    required this.hintText,
    this.hintStyle,
    this.suffixIcon,
    this.obscureText,
  });
  final Color? backgroundColor;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final String hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final bool? obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: backgroundColor ?? ColorManager.moreLieghtGrey,
        filled: true,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorManager.lieghterGrey,
                width: 1.3,
              ),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                color: ColorManager.primaryColorBlue,
                width: 1.3,
              ),
            ),
        hintText: hintText,
        hintStyle: hintStyle ?? FontStyls.font14LieghtGreyMeduim(),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText ?? false,
    );
  }
}
