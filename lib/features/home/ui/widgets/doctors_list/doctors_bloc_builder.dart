import 'package:doc_appointments_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsError,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsError: (error) {
            return SizedBox.shrink();
          },
          doctorsSuccess: (docotrs) {
            return DoctorsListView(doctors: docotrs);
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}
