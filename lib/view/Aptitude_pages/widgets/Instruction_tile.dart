import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';

class InstructionTile extends StatelessWidget {
  const InstructionTile({
    Key? key,
    required this.index,
    required this.title,
  }) : super(key: key);
  final String index;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ListTile(
        leading: TextWidget(
          txt: index,
          size: 55,
          weight: FontWeight.bold,
          clr: constant,
          fam: GoogleFonts.caladea().fontFamily,
        ),
        title: TextWidget(
          txt: title,
          size: 20,
        ),
      ),
    );
  }
}
