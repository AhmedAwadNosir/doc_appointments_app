import 'package:json_annotation/json_annotation.dart';
part 'doctors_specialization_reponse_modal.g.dart';

@JsonSerializable()
class DoctorsSpecializationResponseData {
  @JsonKey(name: 'data')
  List<SpecializationData>? specializationDataList;

  DoctorsSpecializationResponseData({this.specializationDataList});

  factory DoctorsSpecializationResponseData.fromJson(
    Map<String, dynamic> json,
  ) => _$DoctorsSpecializationResponseDataFromJson(json);
}

@JsonSerializable()
class SpecializationData {
  int? id;
  String? name;
  @JsonKey(name: "doctors")
  List<DoctorsModal>? doctorsList;
  SpecializationData({this.id, this.name, this.doctorsList});
  factory SpecializationData.fromJson(Map<String, dynamic> json) =>
      _$SpecializationDataFromJson(json);
}

@JsonSerializable()
class DoctorsModal {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  @JsonKey(name: 'appoint_price')
  int? price;
  String degree;
  String? address;

  DoctorsModal({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.price,
    required this.degree,
    this.address,
  });

  factory DoctorsModal.fromJson(Map<String, dynamic> json) =>
      _$DoctorsModalFromJson(json);
}
