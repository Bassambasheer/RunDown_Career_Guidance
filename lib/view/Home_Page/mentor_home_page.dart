import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/theme/theme.dart';
import 'package:run_down/view/Home_Page/widgets/App_bar.dart';

class MentorHomeScreen extends StatelessWidget {
  const MentorHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 50), child: HomeScreenAppBar()),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextWidget(
              txt: "Hi Cristiano , Allocated Users For You ",
              size: 35,
              clr: constant,
              align: TextAlign.center),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                    title: const TextWidget(
                      txt: "name",
                      size: 25,
                    ),
                    trailing: TextButton(
                        onPressed: () {},
                        child: const TextWidget(txt: "View results")));
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
