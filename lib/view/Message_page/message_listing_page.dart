import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Message_page/message_content_screen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          txt: "Messages",
          clr: black,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => const MessageContentScreen()));
              },
              child: const ListTile(
                leading: CircleAvatar(),
                title: TextWidget(txt: "Name"),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: 10),
    );
  }
}
