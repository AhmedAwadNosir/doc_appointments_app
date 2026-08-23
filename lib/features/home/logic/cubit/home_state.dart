import 'package:doc_appointments_app/core/networking/api_error_handler.dart';
import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSeccess(
    DoctorsSpecializationResponseData? specializationData,
  ) = SpecializationSeccess;
  const factory HomeState.specializationError(ErrorHandler? error) =
      SpecializationError;
}
