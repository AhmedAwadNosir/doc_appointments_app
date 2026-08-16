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
    this.textEditingController,
    required this.validator,
  });
  final Color? backgroundColor;
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final String hintText;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextEditingController? textEditingController;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: textEditingController,
      decoration: InputDecoration(
        fillColor: backgroundColor ?? ColorManager.moreLieghtGrey,
        filled: true,
        isDense: true,
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        enabledBorder:
            enabledBorder ??
            buildOutlinedInputBorder(color: ColorManager.lieghterGrey),
        focusedBorder: focusedBorder ?? buildOutlinedInputBorder(),
        errorBorder: buildOutlinedInputBorder(color: Colors.red),
        focusedErrorBorder: buildOutlinedInputBorder(color: Colors.red),
        hintText: hintText,
        hintStyle: hintStyle ?? FontStyls.font14LieghtGreyMeduim(),
        suffixIcon: suffixIcon,
      ),
      obscureText: obscureText ?? false,
    );
  }
}

OutlineInputBorder buildOutlinedInputBorder({Color? color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? ColorManager.primaryColorBlue,
      width: 1.3,
    ),
    borderRadius: BorderRadius.circular(16),
  );
}
