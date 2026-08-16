import 'package:json_annotation/json_annotation.dart';

part "api_error_modal.g.dart";

@JsonSerializable()
class ApiErrorModal {
  final int? code;
  final String? message;

  ApiErrorModal({this.code, required this.message});

  factory ApiErrorModal.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModalFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModalToJson(this);
}
