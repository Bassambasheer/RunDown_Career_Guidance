import 'package:json_annotation/json_annotation.dart';

part 'user_sign_up_model.g.dart';

@JsonSerializable()
class UserSignUpModel {
  @JsonKey(name: "firstName")
  String? firstName;
  @JsonKey(name: "lastName")
  String? lastName;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "password")
  String? password;
  @JsonKey(name: "confirmPassword")
  String? confirmPassword;
  @JsonKey(name: "qualification")
  String? qualification;
  @JsonKey(name: "address")
  String? address;
  @JsonKey(name: "aboutSelf")
  String? aboutSelf;
  @JsonKey(name: "action")
  String? action;
  @JsonKey(name: "otp")
  String? otp;

  UserSignUpModel.create({
   required this.firstName,
   required this.lastName,
   required this.email,
   required this.phone,
   required this.password,
   required this.confirmPassword,
   required this.qualification,
   required this.address,
   required this.aboutSelf,
   required this.action,
   required this.otp
  });
  UserSignUpModel.verify({
  required this.phone,
   required this.email,
  });

  UserSignUpModel({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.password,
    this.confirmPassword,
    this.qualification,
    this.address,
    this.aboutSelf,
    this.action,
  });

  factory UserSignUpModel.fromJson(Map<String, dynamic> json) {
    return _$UserSignUpModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserSignUpModelToJson(this);
}
