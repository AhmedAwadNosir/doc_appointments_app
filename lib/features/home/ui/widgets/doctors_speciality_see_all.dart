import 'package:doc_appointments_app/core/theming/font_weight_helper.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Doctors Speciality',
          style: FontStyls.font18darkblueBold().copyWith(
            fontWeight: FontWeightHelper.semiBold,
          ),
        ),
        const Spacer(),
        Text('See All', style: FontStyls.font12MainblueRegular()),
      ],
    );
  }
}
