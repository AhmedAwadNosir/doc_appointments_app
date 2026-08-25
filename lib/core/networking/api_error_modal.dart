import 'package:doc_appointments_app/core/helpers/extintions/navigation.dart';
import 'package:json_annotation/json_annotation.dart';

part "api_error_modal.g.dart";

@JsonSerializable()
class ApiErrorModal {
  final int? code;
  final String? message;
  @JsonKey(name: 'data')
  Map<String, dynamic>? errors;

  ApiErrorModal({this.code, this.message, this.errors});

  factory ApiErrorModal.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModalFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModalToJson(this);

  String getAllErrorsMessages() {
    if (errors.isNullOrEmpty()) return message ?? 'Unkown Error Ocured';
    final errorMessage = errors!.entries
        .map((entry) {
          final value = entry.value;
          return "${value.join(',')}";
        })
        .join('\n');
    return errorMessage;
  }
}
