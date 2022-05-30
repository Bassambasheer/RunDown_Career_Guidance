import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);
  final bool resend = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                const TextWidget(txt: "OTP Verification"),
                const TextWidget(txt: "We sent your code to +1 898 860 ***"),
                buildTimer(resend),
                OtpTextField(
                  onSubmit: (value) {},
                  borderWidth: 4.0,
                  showFieldAsBox: true,
                  numberOfFields: 6,
                  borderColor: const Color(0xFF512DA8),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Resend OTP Code",
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildTimer(resend) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Resend OTP in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: const Duration(seconds: 30),
          builder: (_, dynamic value, child) => Text(
            "00:${value.toInt()}",
            style: const TextStyle(color: blue),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
