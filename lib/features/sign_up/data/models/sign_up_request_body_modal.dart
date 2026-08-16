import 'package:json_annotation/json_annotation.dart';

part 'sign_up_request_body_modal.g.dart';

@JsonSerializable()
class SignUpRequestBodyModal {
  final String? name;
  final String? email;
  final String? phone;
  final String? gender;
  final String? password;
  @JsonKey(name: "password_confirmation")
  final String? passwordConfirmation;

  SignUpRequestBodyModal({
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.password,
    this.passwordConfirmation,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyModalToJson(this);
}
