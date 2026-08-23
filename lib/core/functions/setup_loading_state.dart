import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:flutter/material.dart';

void setupLoadingState(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => const Center(
      child: CircularProgressIndicator(color: ColorManager.primaryColorBlue),
    ),
  );
}
