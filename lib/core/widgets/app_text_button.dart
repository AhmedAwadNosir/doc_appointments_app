import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    this.onpress,
    required this.buttonText,

    this.buttonTextStyle,
    this.backgroundColor,
    this.padding,
    this.borderRaduis,
    this.buttonHieght,
    this.buttonWidth,
  });
  final VoidCallback? onpress;
  final String buttonText;
  final TextStyle? buttonTextStyle;
  final Color? backgroundColor;
  final WidgetStatePropertyAll<EdgeInsetsGeometry>? padding;
  final double? borderRaduis;
  final double? buttonHieght;
  final double? buttonWidth;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(
          backgroundColor ?? ColorManager.primaryColorBlue,
        ),
        padding:
            padding ??
            WidgetStatePropertyAll(
              EdgeInsetsGeometry.symmetric(vertical: 14.h),
            ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(borderRaduis ?? 16),
          ),
        ),
        fixedSize: WidgetStatePropertyAll(
          Size(buttonWidth ?? double.maxFinite, buttonHieght ?? 52),
        ),
      ),
      child: Text(
        buttonText,
        style: buttonTextStyle ?? FontStyls.font16WhightsemiBold(),
      ),
    );
  }
}
