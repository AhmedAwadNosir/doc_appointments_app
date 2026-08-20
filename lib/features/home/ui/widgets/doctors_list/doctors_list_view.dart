import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    width: 110.w,
                    height: 120.h,
                    'https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050',
                    fit: BoxFit.cover,
                  ),
                ),
                horizantelSpacing(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: FontStyls.font18darkblueBold(),
                        overflow: TextOverflow.ellipsis,
                      ),
                      verticalSpacing(height: 5),
                      Text(
                        'Degree | 0111111111111',
                        style: FontStyls.font12GreyMeduim(),
                      ),
                      verticalSpacing(height: 5),
                      Text(
                        'Email@email.com',
                        style: FontStyls.font12GreyMeduim(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
