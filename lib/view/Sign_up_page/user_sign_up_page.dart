import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/core/constantwidgets/txtbox.dart';
import 'package:run_down/theme/theme.dart';

class UserSignUpScreen extends StatelessWidget {
  UserSignUpScreen({Key? key}) : super(key: key);
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
            controller: usernameController,
            hint: "First Name",
          ),
          TxtField(
            controller: usernameController,
            hint: "Last Name",
          ),
          TxtField(
            controller: usernameController,
            hint: "Email",
            type: TextInputType.emailAddress,
          ),
          TxtField(
            controller: usernameController,
            hint: "Phone",
            type: TextInputType.phone,
          ),
            TxtField(
            controller: usernameController,
            pass: true,
            hint: "Password",
          ),
            TxtField(
            controller: usernameController,
            pass: true,
            hint: "Confirm Password",
          ),
            TxtField(
            controller: usernameController,
            hint: "Qualification",
          ),
           TxtField(
            controller: usernameController,
            hint: "Address",
            lines: 5,
          ), TxtField(
            controller: usernameController,
            hint: "Write about yourself",
            lines: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25,right: 25,
            top: 10,bottom: 10),
            child: ButtonWidget(txt: "Register", ontap: (){}),
          )
        ],
      ),
    );
  }
}
