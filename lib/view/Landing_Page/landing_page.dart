import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Landing_Page/widgets/landing_widget.dart';
import 'package:run_down/view/Log_In_page/login_in_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatelessWidget {
  LandingPage({Key? key}) : super(key: key);
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 80),
        child: PageView(
          controller: controller,
          children: [
            const LandingWidget(
                widget: TextWidget(
                  txt: "Swipe ->",
                  clr: constant,
                  size: 22,
                ),
                asset: "assets/landing1.png",
                centerTxt:
                    "Take a aptitude test developed by our experts team"),
            const LandingWidget(
                widget: TextWidget(
                  txt: "Swipe ->",
                  clr: constant,
                  size: 22,
                ),
                asset: "assets/landing2.png",
                centerTxt:
                    "Find the experts in your interested fields from our mentors section"),
            const LandingWidget(
                widget: TextWidget(
                  txt: "Swipe ->",
                  clr: constant,
                  size: 22,
                ),
                asset: "assets/landing3.jpg",
                centerTxt:
                    "Book a time slot from mentors free time and chat with the mentors"),
            LandingWidget(
                widget: ButtonWidget(
                  txt: "Get Started",
                  ontap: () async {
                    final prefs = await SharedPreferences.getInstance();
                    prefs.setBool('newUser', false);
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (ctx) => LogInScreen()));
                  },
                ),
                asset: "assets/landing4.jpg",
                centerTxt:
                    "Get premium and go on video call with your mentors"),
          ],
        ),
      ),
      // ignore: sized_box_for_whitespace
      bottomSheet: Container(
        padding: const EdgeInsets.only(bottom: 40),
        alignment: Alignment.bottomCenter,
        height: 80,
        child: SmoothPageIndicator(
          controller: controller,
          count: 4,
        ),
      ),
    );
  }
}
