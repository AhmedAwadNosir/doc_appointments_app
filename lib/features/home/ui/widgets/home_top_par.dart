import 'package:doc_appointments_app/core/helpers/app_images.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Omar!', style: FontStyls.font18darkblueBold()),
            Text(
              'How Are you Today?',
              style: FontStyls.font12MainblueRegular().copyWith(
                color: Color(0xff616161),
              ),
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0,
          backgroundColor: ColorManager.moreLieghterGrey,
          child: SvgPicture.asset(AppImages.notification),
        ),
      ],
    );
  }
}
