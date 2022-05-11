import 'package:flutter/material.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Aptitude_pages/Instructions.dart';
import 'package:run_down/view/Home_Page/widgets/Home_card.dart';
import 'package:run_down/view/Message_page/message_listing_page.dart';
import 'package:run_down/view/Premium_page/premiuim_page.dart';
import 'package:run_down/view/Profile_page/profile_page.dart';
import 'package:run_down/view/Sign_up_page/mentor_sign_up_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: white,
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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const ProfileScreen()));
            },
            child: const CircleAvatar(
              backgroundColor: black,
              radius: 16,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(shrinkWrap: true, children: [
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
            ontap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const InstructionSet()));
            },
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
            ontap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => MentorSignUp()));
            },
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
            ontap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const PremiumScreen()));
            },
          )
        ]),
      ),
    );
  }
}
