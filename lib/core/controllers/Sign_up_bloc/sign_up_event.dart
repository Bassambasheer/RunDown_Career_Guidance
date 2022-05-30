part of 'sign_up_bloc.dart';
class SignUpEvent{}
class CheckUserExistEvent extends SignUpEvent {
 
  final String? email;
  final String? phone;
  CheckUserExistEvent({
    required this.email,
    required this.phone,
  });
}
class VerifyOtpEvent extends SignUpEvent {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? phone;
  final String? password;
  final String? confirmPass;
  final String? address;
  final String? qualification;
  final String? about;
  final String? action;
  final String? otp;
  VerifyOtpEvent({
    required this.email,
    required this.phone,
    this.firstName,
    this.lastName,
    this.password,
    this.confirmPass,
    this.address,
    this.qualification,
    this.about,
    this.action,
    this.otp
  });
}
