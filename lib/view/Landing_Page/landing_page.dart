import 'package:flutter/material.dart';
import 'package:run_down/core/constant/buttonwidget.dart';
import 'package:run_down/core/constant/textwidget.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Home_Page/home_page.dart';
import 'package:run_down/view/Landing_Page/widgets/landing_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children:  [
        const LandingWidget(
            widget: TextWidget(
              txt: "Swipe ->",
              clr: constant,
              size: 25,
            ),
            asset: "assets/landing1.png",
            centerTxt: "Take a aptitude test developed by our experts team"),
        const LandingWidget(
            widget: TextWidget(
              txt: "Swipe ->",
              clr: constant,
              size: 25,
            ),
            asset: "assets/landing2.png",
            centerTxt:
                "Find the experts in your interested fields from our mentors section"),
        const LandingWidget(
            widget: TextWidget(
              txt: "Swipe ->",
              clr: constant,
              size: 25,
            ),
            asset: "assets/landing3.jpg",
            centerTxt:
                "Book a time slot from mentors free time and chat with the mentors"),
        LandingWidget(
            widget: ButtonWidget(
              txt: "Get Started",
              ontap: (){
                 Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (ctx) =>const HomePage()));
              },
            ),
            asset: "assets/landing4.jpg",
            centerTxt: "Get premium and go on video call with your mentors")
      ],
    );
  }
}