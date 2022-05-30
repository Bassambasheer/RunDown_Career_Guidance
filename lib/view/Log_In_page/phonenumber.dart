import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/core/constantwidgets/txtbox.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Log_In_page/otp_page.dart';

class PhoneNumber extends StatelessWidget {
  PhoneNumber({Key? key}) : super(key: key);

  final TextEditingController numberController = TextEditingController();

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
                height: size.height * 0.4,
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
                        controller: numberController,
                        hint: "Phone Number",
                        type: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'This field is required';
                          }
                          return null;
                        },
                      ),
                      ButtonWidget(
                          txt: "Login",
                          ontap: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => const Otp()));
                            }
                          }),
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
