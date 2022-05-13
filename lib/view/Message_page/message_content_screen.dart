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
          Expanded(child: Container()),
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
