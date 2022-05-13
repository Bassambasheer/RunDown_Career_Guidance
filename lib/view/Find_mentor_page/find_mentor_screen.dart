import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/buttonwidget.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Message_page/message_content_screen.dart';

class FindYourMentor extends StatelessWidget {
  const FindYourMentor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const space = SizedBox(height: 25);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CircleAvatar(
                    radius: 70,
                    backgroundColor: grey,
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 105, 184, 250),
                    radius: 40,
                    child: Icon(
                      Icons.video_call_sharp,
                      size: 60,
                      color: white,
                    ),
                  )
                ],
              ),
              const TextWidget(
                txt: "Bassam Basheer N",
                size: 24,
                weight: FontWeight.bold,
              ),
              space,
              const TextWidget(
                txt: "Location :  Seattle, Washington, U.S.",
                size: 25,
              ),
              space,
              const TextWidget(
                txt: "Education : 	Harvard University (dropped out)",
                size: 25,
              ),
              space,
              const TextWidget(
                txt:
                    "Occupation :  Software developer , investor , entrepreneur",
                size: 25,
              ),
              space,
              const TextWidget(
                txt: "Email :  sonubassam.00@gmail.com",
                size: 25,
              ),
              ButtonWidget(
                  txt: "Message",
                  ontap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (ctx) => const MessageContentScreen()));
                  }),
              ButtonWidget(
                  txt: "Change Mentor",
                  ontap: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (ctx) => MessageContentScreen()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
