import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';

class MessageContentScreen extends StatelessWidget {
  const MessageContentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          txt: "Name",
          clr: black,
          size: 20,
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Stack(
            alignment: Alignment.center,
            children: [
              Container(),
              // Container(
              //   width: 250,
              //   height: 250,
              //   decoration: BoxDecoration(
              //     color: const Color.fromARGB(255, 250, 212, 225),
              //     borderRadius: BorderRadius.circular(10),
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.grey.withOpacity(0.5),
              //         spreadRadius: 3,
              //         blurRadius: 3,
              //         offset: const Offset(0, 3),
              //       ),
              //     ],
              //   ),
              //   child: Column(
              //     children: const [
              //       TextWidget(txt: "Schedule a time slot with mentor"),

              //     ],
              //   ),
              // ),
            ],
          )),
          TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.send,
                    size: 20,
                  ),
                ),
                contentPadding: const EdgeInsets.all(12),
                hintText: "Message"),
          )
        ],
      ),
    );
  }
}
