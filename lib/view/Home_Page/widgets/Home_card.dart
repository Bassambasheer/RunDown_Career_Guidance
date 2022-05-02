import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/theme/theme.dart';

import '../../../core/constantwidgets/textwidget.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    Key? key,
    required this.size,
    required this.asset,
    required this.title,
    required this.content,
    required this.ontap,
  }) : super(key: key);
  final String asset;
  final Size size;
  final String title;
  final String content;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(25),
      ),
      width: size.width * 0.7,
      height: size.width * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: size.width * 0.2,
            height: size.width * 0.2,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(asset))),
          ),
          TextWidget(
            align: TextAlign.center,
            txt: title,
            size: 27,
          ),
          TextWidget(
            align: TextAlign.center,
            txt: content,
            size: 20,
          ),
          ButtonWidget(
              txt: "Explore",
              ontap: () {
                ontap;
              })
        ],
      ),
    );
  }
}
