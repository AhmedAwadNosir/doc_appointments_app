// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModal _$ApiErrorModalFromJson(Map<String, dynamic> json) =>
    ApiErrorModal(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ApiErrorModalToJson(ApiErrorModal instance) =>
    <String, dynamic>{'code': instance.code, 'message': instance.message};
