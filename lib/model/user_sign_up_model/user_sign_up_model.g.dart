// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sign_up_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSignUpModel _$UserSignUpModelFromJson(Map<String, dynamic> json) =>
    UserSignUpModel(
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      confirmPassword: json['confirmPassword'] as String?,
      qualification: json['qualification'] as String?,
      address: json['address'] as String?,
      aboutSelf: json['aboutSelf'] as String?,
      action: json['action'] as String?,
    )..otp = json['otp'] as String?;

Map<String, dynamic> _$UserSignUpModelToJson(UserSignUpModel instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'confirmPassword': instance.confirmPassword,
      'qualification': instance.qualification,
      'address': instance.address,
      'aboutSelf': instance.aboutSelf,
      'action': instance.action,
      'otp': instance.otp,
    };
