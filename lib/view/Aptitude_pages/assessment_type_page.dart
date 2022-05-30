import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Aptitude_pages/widgets/Assessment_card.dart';

class AssessmentScreen extends StatelessWidget {
  const AssessmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              TextWidget(
                txt: "Take our aptitute test",
                size: 30,
                clr: constant,
              ),
              TextWidget(
                txt: "Discover yourself and your ideal career",
                size: 23,
                clr: constant,
                align: TextAlign.center,
              ),
              AssessmentCard(),
              AssessmentCard()
            ],
          ),
        ),
      ),
    );
  }
}
