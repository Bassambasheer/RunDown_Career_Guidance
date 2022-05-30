import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/core/constantwidgets/txtbox.dart';
import 'package:run_down/core/controllers/Sign_up_bloc/sign_up_bloc.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Home_Page/user_home_page.dart';
import 'package:run_down/view/Log_In_page/otp_page.dart';

class UserSignUpScreen extends StatelessWidget {
  UserSignUpScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Scaffold(
          body: Form(
            key: _formKey,
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                  child: TextWidget(
                    align: TextAlign.center,
                    txt: "RunDown",
                    size: 35,
                    weight: FontWeight.bold,
                    clr: redColorDark,
                    fam: GoogleFonts.viga().fontFamily,
                  ),
                ),
                const TextWidget(
                  align: TextAlign.center,
                  txt: "Build your career with us",
                  size: 20,
                  weight: FontWeight.bold,
                ),
                const SizedBox(height: 20),
                TxtField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: state.firstnameController,
                  hint: "First Name",
                ),
                TxtField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: state.lastnameController,
                  hint: "Last Name",
                ),
                TxtField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: state.emailController,
                  hint: "Email",
                  type: TextInputType.emailAddress,
                ),
                TxtField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: state.phoneController,
                  hint: "Phone",
                  type: TextInputType.phone,
                ),
                TxtField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: state.passwordController,
                  pass: true,
                  hint: "Password",
                ),
                TxtField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: state.confirmpassController,
                  pass: true,
                  hint: "Confirm Password",
                ),
                TxtField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: state.qualificationController,
                  hint: "Qualification",
                ),
                TxtField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: state.addressController,
                  hint: "Address",
                  lines: 5,
                ),
                TxtField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'This field is required';
                    }
                    return null;
                  },
                  controller: state.aboutController,
                  hint: "Write about yourself",
                  lines: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 10, bottom: 10),
                  child: ButtonWidget(
                      txt: "Register",
                      ontap: () async {
                        if (_formKey.currentState!.validate()) {
                          context.read<SignUpBloc>().add(CheckUserExistEvent(
                                email: state.emailController.text,
                                phone: state.phoneController.text,
                              ));
                          if (state.freshuser == true) {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    backgroundColor: Colors.blue,
                                    insetPadding: const EdgeInsets.all(15),
                                    title: const TextWidget(
                                        txt: "Verify your OTP"),
                                    content: OtpTextField(
                                      onSubmit: (value) async {
                                        context.read<SignUpBloc>().add(
                                            VerifyOtpEvent(
                                                firstName: state
                                                    .firstnameController.text,
                                                lastName: state
                                                    .lastnameController.text,
                                                email:
                                                    state.emailController.text,
                                                phone:
                                                    state.phoneController.text,
                                                password: state
                                                    .passwordController.text,
                                                address: state
                                                    .addressController.text,
                                                qualification: state
                                                    .qualificationController
                                                    .text,
                                                about:
                                                    state.aboutController.text,
                                                action: "signup",
                                                otp: value));
                                        if (state.signupSuccess == true) {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (ctx) =>
                                                      HomeScreen()));
                                        }
                                      },
                                      borderWidth: 4.0,
                                      numberOfFields: 6,
                                      borderColor: const Color(0xFF512DA8),
                                    ),
                                    actions: [
                                      ButtonWidget(
                                          txt: "cancel",
                                          ontap: () {
                                            Navigator.pop(context);
                                          })
                                    ],
                                  );
                                });
                          } else {
                            return;
                          }
                        }
                      }),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
