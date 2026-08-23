import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, required this.doctors});
  final List<DoctorsModal> doctors;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          return DoctorsListViewItem(doctors: doctors[index]);
        },
      ),
    );
  }
}
