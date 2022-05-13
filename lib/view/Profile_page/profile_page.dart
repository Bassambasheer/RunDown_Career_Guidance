import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:run_down/core/constantwidgets/textwidget.dart';
import 'package:run_down/core/constantwidgets/txtbox.dart';
import 'package:run_down/core/controllers/Profile_bloc/profile_bloc.dart';
import 'package:run_down/theme/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const TextWidget(
              txt: "Profile",
              clr: black,
            ),
            actions: [
              state.readonly == true
                  ? TextButton.icon(
                      onPressed: () {
                        context
                            .read<ProfileBloc>()
                            .add(EditEvent(isreadonly: false));
                      },
                      label: const TextWidget(
                        txt: "edit",
                        size: 18,
                      ),
                      icon: const Icon(
                        Icons.edit,
                        size: 18,
                      ))
                  : TextButton.icon(
                      onPressed: () {
                        context
                            .read<ProfileBloc>()
                            .add(EditEvent(isreadonly: true));
                      },
                      label: const TextWidget(
                        txt: "save",
                        size: 18,
                      ),
                      icon: const Icon(
                        Icons.save_as_outlined,
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
                  readonly: state.readonly,
                  hint: "Email",
                  type: TextInputType.emailAddress,
                ),
                TxtField(
                  readonly: state.readonly,
                  hint: "Phone",
                  type: TextInputType.phone,
                ),
                TxtField(
                  readonly: state.readonly,
                  pass: true,
                  hint: "Password",
                ),
                TxtField(
                  readonly: state.readonly,
                  hint: "Qualification",
                ),
                TxtField(
                  readonly: state.readonly,
                  hint: "Address",
                  lines: 5,
                ),
                TxtField(
                  readonly: state.readonly,
                  hint: "About yourself",
                  lines: 5,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
