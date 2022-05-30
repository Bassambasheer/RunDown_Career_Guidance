part of 'sign_up_bloc.dart';

class SignUpState {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController confirmpassController = TextEditingController();
  final TextEditingController qualificationController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  final bool? freshuser;
  final bool? signupSuccess;
  SignUpState({this.freshuser,this.signupSuccess});
}
