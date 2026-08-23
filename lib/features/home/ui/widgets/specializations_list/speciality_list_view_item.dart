import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/specializations_list/doctors_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatelessWidget {
  const DoctorsSpecialityListView({
    super.key,
    required this.specializationData,
  });
  final List<SpecializationData> specializationData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specializationData.length,
        itemBuilder: (context, index) {
          return DoctorsSpecialityListViewItem(
            index: index,
            doctorsSpecialization: specializationData[index],
          );
        },
      ),
    );
  }
}
