//this class is the alutrnative of eaither<failure and success>
import 'package:doc_appointments_app/core/networking/api_error_modal.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_result.freezed.dart';

@freezed
class ApiReslut<t> with _$ApiReslut<t> {
  factory ApiReslut.success(t data) = Success<t>;
  factory ApiReslut.failure(ApiErrorModal apiErrorModal) = Failure<t>;
}
