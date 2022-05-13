import 'package:flutter/material.dart';
import 'package:run_down/view/Aptitude_pages/Instructions.dart';
import 'package:run_down/view/Find_mentor_page/find_mentor_screen.dart';
import 'package:run_down/view/Home_Page/widgets/App_bar.dart';
import 'package:run_down/view/Home_Page/widgets/Home_card.dart';
import 'package:run_down/view/Premium_page/premiuim_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 50), child: HomeScreenAppBar()),
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
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (ctx) => const FindYourMentor()));
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
