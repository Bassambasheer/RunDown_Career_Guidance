import 'package:flutter/material.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Home_Page/widgets/Home_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: iconThemeData,
        backgroundColor: white,
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.other_houses_rounded)),
          const SizedBox(width: 20),
          IconButton(onPressed: () {}, icon: const Icon(Icons.mail)),
          const SizedBox(width: 20),
          const CircleAvatar(
            backgroundColor: black,
            radius: 16,
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: ListView(shrinkWrap: true, children: [
        Column(
          children: [
            Container(
              width: size.width,
              height: size.width * 0.8,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/home.jpg"))),
            ),
            HomeCard(
              size: size,
              asset: "assets/home1.png",
              title: "Find your career",
              content:
                  "Find your ideal course\n and career.Talk to our\n experts",
              ontap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            HomeCard(
              size: size,
              asset: "assets/home2.png",
              title: "Find your Mentor",
              content:
                  "Find the mentors who\nare chosen for you,talk\nto them and find your\npath",
              ontap: () {},
            ),
            const SizedBox(
              height: 15,
            ),
            HomeCard(
              size: size,
              asset: "assets/premium.webp",
              title: "Premium Membership",
              content:
                  "Buy premium\nmembership to avail\nmore features like video\ncall with mentors etc.",
              ontap: () {},
            ),
          ],
        )
      ]),
    );
  }
}
