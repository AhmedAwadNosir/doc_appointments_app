import 'package:doc_appointments_app/core/helpers/app_images.dart';
import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueContainer extends StatelessWidget {
  const DoctorsBlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 165.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              image: const DecorationImage(
                image: AssetImage(AppImages.homePattern),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: FontStyls.font18WhieghtMeduim(),
                  textAlign: TextAlign.start,
                ),
                verticalSpacing(height: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0),
                      ),
                    ),
                    child: Text(
                      'Find Nearby',
                      style: FontStyls.font12MainblueRegular(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 8.w,
            top: 0,
            child: Image.asset(AppImages.doctor, height: 200.h),
          ),
        ],
      ),
    );
  }
}
