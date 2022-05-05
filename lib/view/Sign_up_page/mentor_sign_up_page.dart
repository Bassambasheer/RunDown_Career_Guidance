import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/core/constantwidgets/txtbox.dart';
import 'package:run_down/theme/theme.dart';

class MentorSignUp extends StatelessWidget {
  MentorSignUp({Key? key}) : super(key: key);

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController confirmpassController = TextEditingController();
  final TextEditingController qualificationController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController linkController = TextEditingController();

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
              txt: "Be a Mentor",
              size: 35,
              weight: FontWeight.bold,
              clr: constant,
              fam: GoogleFonts.viga().fontFamily,
            ),
          ),
          const TextWidget(
            align: TextAlign.center,
            txt: "Register Here to be  part of our team ",
            size: 20,
            weight: FontWeight.bold,
          ),
          const SizedBox(height: 20),
          TxtField(
            controller: firstnameController,
            hint: "First Name",
          ),
          TxtField(
            controller: lastnameController,
            hint: "Last Name",
          ),
          TxtField(
            controller: emailController,
            hint: "Email",
            type: TextInputType.emailAddress,
          ),
          TxtField(
            controller: phoneController,
            hint: "Phone",
            type: TextInputType.phone,
          ),
          TxtField(
            controller: passwordController,
            pass: true,
            hint: "Password",
          ),
          TxtField(
            controller: confirmpassController,
            pass: true,
            hint: "Confirm Password",
          ),
          TxtField(
            controller: qualificationController,
            hint: "Qualification",
          ),
          TxtField(
            controller: addressController,
            hint: "Address",
            lines: 5,
          ),
          TxtField(controller: linkController, hint: "LinkedIn profile link"),
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
            child: ButtonWidget(txt: "Register", ontap: () {}),
          )
        ],
      ),
    );
  }
}
