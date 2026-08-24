import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/specializations_list/doctors_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsSpecialityListView extends StatefulWidget {
  const DoctorsSpecialityListView({
    super.key,
    required this.specializationData,
  });
  final List<SpecializationData> specializationData;

  @override
  State<DoctorsSpecialityListView> createState() =>
      _DoctorsSpecialityListViewState();
}

class _DoctorsSpecialityListViewState extends State<DoctorsSpecialityListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(
                specialityIndex:
                    widget.specializationData[selectedIndex].id ?? 0,
              );
            },
            child: DoctorsSpecialityListViewItem(
              itemIndex: index,
              selectedIndex: selectedIndex,
              doctorsSpecialization: widget.specializationData[index],
            ),
          );
        },
      ),
    );
  }
}
