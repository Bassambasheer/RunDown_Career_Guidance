
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constant/textwidget.dart';
import 'package:run_down/theme/theme.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.txt,required this.ontap,
  }) : super(key: key);
  final String txt;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      color: constant,
      onPressed: () {
        ontap();
      },
      child: TextWidget(
        txt: txt,
        clr: white,
        size: 22,
  
      ),
    );
  }
}
