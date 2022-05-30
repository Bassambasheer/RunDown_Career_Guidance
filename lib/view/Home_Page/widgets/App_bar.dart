import 'package:flutter/material.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Message_page/message_listing_page.dart';
import 'package:run_down/view/Profile_page/profile_page.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const MessageScreen()));
            },
            icon: const Icon(Icons.mail)),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (ctx) => ProfileScreen()));
          },
          child: const CircleAvatar(
            backgroundColor: black,
            radius: 16,
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
