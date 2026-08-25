import 'package:bloc/bloc.dart';
import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:doc_appointments_app/core/networking/api_error_modal.dart';
import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_appointments_app/features/home/repos/home_repo_impl.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepoImpl homeRepoImpl;
  List<SpecializationData> specializationDataList = [];
  HomeCubit({required this.homeRepoImpl}) : super(HomeState.initial());
  Future<void> getDoctorsSpecializations() async {
    emit(HomeState.specializationLoading());
    var response = await homeRepoImpl.getSpecializatoin();
    response.when(
      success: (specializationData) {
        specializationDataList =
            specializationData.specializationDataList ?? [];
        getDoctorsList(specialityIndex: specializationDataList.first.id ?? 0);
        emit(HomeState.specializationSeccess(specializationDataList));
      },
      failure: (apiErrorModal) {
        emit(HomeState.specializationError(apiErrorModal));
      },
    );
  }

  void getDoctorsList({required int specialityIndex}) {
    List<DoctorsModal> doctors = getDoctorsListBasedonSpeciltyIndex(
      specialityIndex: specialityIndex,
    );
    if (!doctors.isNullOrEmpty()) {
      emit(HomeState.doctorsSuccess(doctors));
    } else {
      emit(
        HomeState.doctorsError(
          ApiErrorModal(message: "No doctors in this speciality"),
        ),
      );
    }
  }

  List<DoctorsModal> getDoctorsListBasedonSpeciltyIndex({
    required int specialityIndex,
  }) {
    return specializationDataList
            .firstWhere(
              (specialization) => specialization.id == specialityIndex,
            )
            .doctorsList ??
        [];
  }
}
