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

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              controller: firstnameController,
              hint: "First Name",
            ),
            TxtField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              controller: lastnameController,
              hint: "Last Name",
            ),
            TxtField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              controller: emailController,
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
              controller: phoneController,
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
              controller: passwordController,
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
              controller: confirmpassController,
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
              controller: qualificationController,
              hint: "Qualification",
            ),
            TxtField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                return null;
              },
              controller: addressController,
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
                controller: linkController,
                hint: "LinkedIn profile link"),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, top: 10, bottom: 10),
              child: ButtonWidget(
                  txt: "Register",
                  ontap: () {
                    if (_formKey.currentState!.validate()) {
                      return null;
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
