import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: const TextWidget(
          txt: "Messages",
          clr: black,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: ListView.separated(
          itemBuilder: (context, index) {
            return const ListTile(
              leading: CircleAvatar(),
              title: TextWidget(txt: "Name"),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 10),
    );
  }
}
