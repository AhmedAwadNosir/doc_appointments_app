import 'package:bloc/bloc.dart';
import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/features/home/logic/cubit/home_state.dart';
import 'package:doc_appointments_app/features/home/repos/home_repo_impl.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepoImpl homeRepoImpl;
  HomeCubit({required this.homeRepoImpl}) : super(HomeState.initial());
  Future<void> getDoctorsSpecializations() async {
    emit(HomeState.specializationLoading());
    var response = await homeRepoImpl.getSpecializatoin();
    response.mapOrNull(
      success: (specializationData) {
        emit(HomeState.specializationSeccess(specializationData.data));
      },
      failure: (error) {
        emit(HomeState.specializationError(error.errorHandler));
      },
    );
  }
}
