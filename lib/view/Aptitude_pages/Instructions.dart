import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Aptitude_pages/widgets/Instruction_tile.dart';

class InstructionSet extends StatelessWidget {
  const InstructionSet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const TextWidget(
            txt: "INSTRUCTIONS",
            size: 35,
            clr: constant,
            align: TextAlign.center,
            weight: FontWeight.bold,
          ),
          const SizedBox(height: 25),
          const InstructionTile(
            index: "01",
            title:
                "Take the assessment with a calm, clear mind. Make sure you’re not distracted by anything or anyone",
          ),
          const InstructionTile(
            index: "02",
            title:
                "Read every question carefully, and answer each one honestly. Remember - these answers will tell you who you are and which career you’re meant to pursue!",
          ),
          const InstructionTile(
            index: "03",
            title:
                "Try and take the whole assessment at once - avoid taking a break!",
          ),
          const InstructionTile(
            index: "04",
            title:
                "This assessment contains 3 categories of question and each category includes 10 questions.",
          ),
          ButtonWidget(txt: "Next", ontap: () {})
        ],
      ),
    );
  }
}
