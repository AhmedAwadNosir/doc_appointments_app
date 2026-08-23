import 'package:doc_appointments_app/core/helpers/app_images.dart';
import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorsSpecialityListViewItem extends StatelessWidget {
  const DoctorsSpecialityListViewItem({
    super.key,
    required this.index,
    required this.doctorsSpecialization,
  });
  final int index;
  final SpecializationData doctorsSpecialization;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: ColorManager.ligthBlue,
            child: Image.asset(
              // doctorsSpecialization.doctorsList?[0]?.photo ?? '',
              AppImages.generalSpecialicy,
              height: 40.h,
              width: 40.w,
            ),
          ),
          verticalSpacing(height: 8),
          Text(
            doctorsSpecialization.name ?? "",
            style: FontStyls.font12DarkblueRegular(),
          ),
        ],
      ),
    );
  }
}
