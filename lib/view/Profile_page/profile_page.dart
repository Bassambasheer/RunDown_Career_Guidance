import 'package:flutter/material.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/core/constantwidgets/txtbox.dart';
import 'package:run_down/theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  final bool readonly = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          txt: "Profile",
          clr: black,
        ),
        actions: [
          TextButton.icon(
              onPressed: () {},
              label: const TextWidget(
                txt: "edit",
                size: 24,
              ),
              icon: const Icon(
                Icons.edit,
                size: 18,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  radius: 70,
                ),
                TextWidget(
                  txt: "Bassam Basheer N",
                  size: 24,
                  weight: FontWeight.bold,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TxtField(
              readonly: readonly,
              hint: "Email",
              type: TextInputType.emailAddress,
            ),
            TxtField(
              readonly: readonly,
              hint: "Phone",
              type: TextInputType.phone,
            ),
            TxtField(
              readonly: readonly,
              pass: true,
              hint: "Password",
            ),
            TxtField(
              readonly: readonly,
              pass: true,
              hint: "Confirm Password",
            ),
            TxtField(
              readonly: readonly,
              hint: "Qualification",
            ),
            TxtField(
              readonly: readonly,
              hint: "Address",
              lines: 5,
            ),
            TxtField(
              readonly: readonly,
              hint: "About yourself",
              lines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
