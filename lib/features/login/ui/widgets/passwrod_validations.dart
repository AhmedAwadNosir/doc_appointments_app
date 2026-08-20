import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';

class PasswrodValidations extends StatelessWidget {
  const PasswrodValidations({
    super.key,
    required this.hasUperCase,
    required this.hasLowerCase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });
  final bool hasUperCase;
  final bool hasLowerCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildVaildatorRow(
          isValidated: hasLowerCase,
          text: "At least 1 lowercase letter",
        ),
        verticalSpacing(height: 2),
        buildVaildatorRow(
          isValidated: hasUperCase,
          text: "At least 1 upercase letter",
        ),
        verticalSpacing(height: 2),
        buildVaildatorRow(
          isValidated: hasSpecialCharacter,
          text: "At least 1 special letter",
        ),
        verticalSpacing(height: 2),
        buildVaildatorRow(isValidated: hasNumber, text: "At least 1 number"),
        verticalSpacing(height: 2),
        buildVaildatorRow(
          isValidated: hasMinLength,
          text: "At least 8 characters long",
        ),
      ],
    );
  }
}

Widget buildVaildatorRow({required bool isValidated, required String text}) {
  return Row(
    children: [
      CircleAvatar(
        radius: 2.5,
        backgroundColor: ColorManager.secondryColorGrey,
      ),
      horizantelSpacing(width: 6),
      Text(
        text,
        style: FontStyls.font13GreyRegular().copyWith(
          decoration: isValidated ? TextDecoration.lineThrough : null,
          decorationColor: Colors.green,
          decorationThickness: 2,
          color: isValidated
              ? ColorManager.secondryColorGrey
              : ColorManager.darkBlue,
        ),
      ),
    ],
  );
}
