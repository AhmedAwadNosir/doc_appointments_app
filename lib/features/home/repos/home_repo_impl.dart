import 'package:dio/dio.dart';
import 'package:doc_appointments_app/core/networking/api_error_handler.dart';
import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/core/networking/api_service.dart';
import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';
import 'package:doc_appointments_app/features/home/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl({required ApiService apiService}) : _apiService = apiService;

  @override
  Future<ApiReslut<DoctorsSpecializationResponseData>>
  getSpecializatoin() async {
    try {
      final response = await _apiService.getSpecialization();
      return ApiReslut.success(response);
    } catch (e) {
      return ApiReslut.failure(ErrorHandler.handle(e));
    }
  }
}
