import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/core/constantwidgets/txtbox.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Home_Page/user_home_page.dart';
import 'package:run_down/view/Log_In_page/otp_page.dart';
import 'package:run_down/view/Log_In_page/phonenumber.dart';
import 'package:run_down/view/Sign_up_page/mentor_sign_up_page.dart';
import 'package:run_down/view/Sign_up_page/user_sign_up_page.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: double.infinity,
                height: size.height * 0.69,
                decoration: BoxDecoration(
                    color: lightgrey, borderRadius: BorderRadius.circular(25)),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0, bottom: 40),
                        child: TextWidget(
                          txt: "RunDown",
                          size: 35,
                          weight: FontWeight.bold,
                          clr: redColorDark,
                          fam: GoogleFonts.viga().fontFamily,
                        ),
                      ),
                      TxtField(
                        icon: const Icon(Icons.person),
                        controller: usernameController,
                        hint: "Username",
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
                          return null;
                        },
                      ),
                      TxtField(
                        icon: const Icon(Icons.lock),
                        controller: passwordController,
                        hint: "Password",
                        pass: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
                          return null;
                        },
                      ),
                      ButtonWidget(
                          txt: "Sign In",
                          ontap: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => const HomeScreen()));
                            }
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextWidget(
                            txt: "Dont have an account?",
                            size: 16,
                            clr: black,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (ctx) => UserSignUpScreen()));
                              },
                              child: const TextWidget(
                                txt: "SignUp",
                                size: 16,
                                clr: blue,
                              )),
                        ],
                      ),
                      const Divider(
                        indent: 30,
                        thickness: 2,
                        endIndent: 30,
                      ),
                      TextButton(
                          onPressed: () {
                             Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => PhoneNumber()));
                          },
                          child: const TextWidget(
                            txt: "Log In with OTP",
                            size: 16,
                            clr: black,
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) => MentorSignUp()));
                          },
                          child: const TextWidget(
                            txt: "Register as Mentor",
                            size: 16,
                            clr: blue,
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
