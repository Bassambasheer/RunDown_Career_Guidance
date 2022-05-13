import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';

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

class AssessmentCard extends StatelessWidget {
  const AssessmentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextWidget(
              txt: "Interest",
              size: 25,
              weight: FontWeight.bold,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                TextWidget(
                  txt: "Progress",
                  size: 18,
                ),
                TextWidget(
                  txt: "Pending",
                  size: 18,
                )
              ],
            ),
            ButtonWidget(txt: "Start", ontap: () {})
          ],
        ),
      ),
    );
  }
}
