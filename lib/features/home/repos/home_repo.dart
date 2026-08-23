import 'package:doc_appointments_app/core/networking/api_result.dart';
import 'package:doc_appointments_app/features/home/data/models/doctors_specialization_reponse_modal.dart';

abstract class HomeRepo {
  Future<ApiReslut<DoctorsSpecializationResponseData>> getSpecializatoin();
}
