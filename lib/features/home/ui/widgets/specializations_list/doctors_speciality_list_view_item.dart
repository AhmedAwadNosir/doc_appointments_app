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
    required this.itemIndex,
    required this.doctorsSpecialization,
    required this.selectedIndex,
  });
  final int itemIndex;
  final int selectedIndex;
  final SpecializationData doctorsSpecialization;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: ColorManager.darkBlue),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: ColorManager.ligthBlue,
                    child: Image.asset(
                      // doctorsSpecialization.doctorsList?[0]?.photo ?? '',
                      AppImages.generalSpecialicy,
                      height: 42.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
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
            style: itemIndex == selectedIndex
                ? FontStyls.font14DarkBlueRegular()
                : FontStyls.font12DarkblueRegular(),
          ),
        ],
      ),
    );
  }
}
