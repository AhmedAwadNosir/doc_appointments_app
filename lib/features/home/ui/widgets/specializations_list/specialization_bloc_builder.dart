import 'package:doc_appointments_app/core/helpers/spacing.dart';
import 'package:doc_appointments_app/core/theming/color_manager.dart';
import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_cubit.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/doctors_list/doctors_shimer_loading.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/specializations_list/specialcy_shimer_loading.dart';
import 'package:doc_appointments_app/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationBlocBuilder extends StatelessWidget {
  const SpecializationBlocBuilder({super.key});

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
            return setupLoading();
          },
          specializationSeccess: (specializationData) {
            return setupSuccess(specializationData);
          },

          specializationError: (specializationError) {
            return setupError();
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  /// shimmer loading for specializations and doctors
  Widget setupLoading() {
    return Expanded(
      child: Column(
        children: [
          const SpecialityShimmerLoading(),
          verticalSpacing(height: 8),
          const DoctorsShimmerLoading(),
        ],
      ),
    );
  }

  Widget setupSuccess(List<SpecializationData> specializationsList) {
    return DoctorsSpecialityListView(specializationData: specializationsList);
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
