// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_specialization_reponse_modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsSpecializationResponseData _$DoctorsSpecializationResponseDataFromJson(
  Map<String, dynamic> json,
) => DoctorsSpecializationResponseData(
  specializationDataList: (json['data'] as List<dynamic>?)
      ?.map((e) => SpecializationData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DoctorsSpecializationResponseDataToJson(
  DoctorsSpecializationResponseData instance,
) => <String, dynamic>{'data': instance.specializationDataList};

SpecializationData _$SpecializationDataFromJson(Map<String, dynamic> json) =>
    SpecializationData(
      data: (json['data'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctorsList: (json['doctors'] as List<dynamic>?)
          ?.map((e) => DoctorsModal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationDataToJson(SpecializationData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'name': instance.name,
      'doctors': instance.doctorsList,
    };

DoctorsModal _$DoctorsModalFromJson(Map<String, dynamic> json) => DoctorsModal(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  photo: json['photo'] as String?,
  gender: json['gender'] as String?,
  price: (json['appoint_price'] as num?)?.toInt(),
  degree: json['degree'] as String,
  address: json['address'] as String?,
);

Map<String, dynamic> _$DoctorsModalToJson(DoctorsModal instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'appoint_price': instance.price,
      'degree': instance.degree,
      'address': instance.address,
    };
