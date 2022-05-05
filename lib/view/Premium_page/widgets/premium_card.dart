import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';

class PremiumCard extends StatelessWidget {
  const PremiumCard({
    Key? key,
    required this.head,
    required this.ontap,
    required this.duration,
    required this.amount,
  }) : super(key: key);
  final String head;
  final String duration;
  final String amount;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextWidget(
            txt: head,
            clr: white,
            size: 27,
            fam: GoogleFonts.aclonica().fontFamily,
          ),
          Card(
            color: redColorDark,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextWidget(
                          txt: duration,
                          clr: white,
                          size: 26,
                          fam: GoogleFonts.balooDa2().fontFamily),
                    ),
                  ),
                  const TextWidget(
                    txt: "Get Video Calls",
                    clr: white,
                    size: 17,
                  ),
                  const TextWidget(
                    txt: "Choose mentors",
                    clr: white,
                    size: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const TextWidget(
                        txt: "24 x 7 Customer support",
                        clr: white,
                        size: 17,
                      ),
                      TextWidget(
                        txt: amount,
                        size: 25,
                        clr: white,
                      )
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        onPressed: () {
                          ontap();
                        },
                        color: Colors.black.withOpacity(0.6),
                        child: const TextWidget(
                          txt: "Get premium now",
                          clr: white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
