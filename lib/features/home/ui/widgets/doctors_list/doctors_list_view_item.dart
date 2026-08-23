import 'package:doc_appointments_app/core/helpers/app_images.dart';
import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({super.key, required this.doctors});
  final DoctorsModal doctors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              AppImages.doctor2,
              width: 110.w,
              height: 120.h,
              // doctors.photo ??
              fit: BoxFit.cover,
            ),
          ),
          horizantelSpacing(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctors.name ?? 'Name',
                  style: FontStyls.font18darkblueBold(),
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpacing(height: 5),
                Text(
                  '${doctors.degree} | ${doctors.phone}',
                  style: FontStyls.font12GreyMeduim(),
                ),
                verticalSpacing(height: 5),
                Text("${doctors.email}", style: FontStyls.font12GreyMeduim()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
