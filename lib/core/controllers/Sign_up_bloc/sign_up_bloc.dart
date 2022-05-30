import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:run_down/core/Api/data.dart';
import 'package:run_down/model/user_sign_up_model/user_sign_up_model.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState()) {
    on<CheckUserExistEvent>((event, emit)async {
      final newUser = UserSignUpModel.verify(
        email: event.email,
        phone: event.phone,
        );
        final _freshuser =  await RunDownDb().checkUserExist(newUser);
       emit(SignUpState(freshuser:_freshuser));
    });
     on<VerifyOtpEvent>((event, emit)async {
      final newUser = UserSignUpModel.create(
        firstName: event.firstName,
        lastName: event.lastName,
        email: event.email,
        phone: event.phone,
        password: event.password,
        confirmPassword: event.confirmPass,
        qualification: event.qualification,
        address: event.address,
        aboutSelf: event.about,
        action: event.action,
        otp: event.otp
        );
        final _success =  await RunDownDb().verifyOtp(newUser);
       emit(SignUpState(signupSuccess:_success));
    });
  }
}
