import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSeccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () {
            return Center(
              child: CircularProgressIndicator(
                color: ColorManager.primaryColorBlue,
              ),
            );
          },
          specializationSeccess: (specializationData) {
            return Expanded(
              child: Column(
                children: [
                  DoctorsSpecialityListView(
                    specializationData:
                        specializationData?.specializationDataList ?? [],
                  ),
                  verticalSpacing(height: 8),
                  DoctorsListView(
                    doctors:
                        specializationData
                            ?.specializationDataList?[0]
                            .doctorsList ??
                        [],
                  ),
                ],
              ),
            );
          },

          specializationError: (specializationError) {
            return SizedBox.shrink();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }
}
