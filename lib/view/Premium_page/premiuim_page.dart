import 'package:flutter/material.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Premium_page/widgets/premium_card.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: ListView(
        children: [
          PremiumCard(
            head: "Elite",
            duration: "12 Months",
            ontap: () {},
            amount: "\u20B9 999",
          ),
          PremiumCard(
            head: "Standard",
            duration: "6 Months",
            ontap: () {},
            amount: "\u20B9 549",
          ),
          PremiumCard(
            head: "Basic",
            duration: "3 Months",
            ontap: () {},
            amount: "\u20B9 299",
          )
        ],
      ),
    );
  }
}
