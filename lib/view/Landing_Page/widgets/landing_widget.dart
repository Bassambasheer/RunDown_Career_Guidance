import 'package:flutter/material.dart';
import 'package:run_down/core/constant/textwidget.dart';
import 'package:run_down/theme/theme.dart';

class LandingWidget extends StatelessWidget {
  const LandingWidget({Key? key, required this.asset, required this.centerTxt,required this.widget})
      : super(key: key);

  final String asset;
  final String centerTxt;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 07,
            height: size.width * 0.7,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(image: AssetImage(asset))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextWidget(
              txt: centerTxt,
              size: 32,
              clr: grey,
              weight: FontWeight.w200,
              align: TextAlign.center,
            ),
          ),
         widget
        ],
      ),
    );
  }
}
