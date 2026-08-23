import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/styls.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/home_bloc_builder.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/home_top_par.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:retrofit/retrofit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20.0, 16.0, 20.0, 28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(),
              DoctorsBlueContainer(),
              verticalSpacing(height: 24),
              DoctorsSpecialitySeeAll(),
              verticalSpacing(height: 18),
              HomeBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
