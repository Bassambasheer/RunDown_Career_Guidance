import 'package:flutter/material.dart';

class TxtField extends StatelessWidget {
TxtField({
    required this.hint,
    Key? key,
    this.pass = false,
    required this.controller, this.lines = 1, this.type,
  }) : super(key: key);
  final String hint;
  final bool pass;
  TextEditingController controller;
  final int? lines;
  final TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
      child: TextFormField(
        keyboardType: type,
        textInputAction: TextInputAction.next,
        controller: controller,
        obscureText: pass,
        maxLines: lines,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
          enabledBorder: const OutlineInputBorder(
              borderSide:  BorderSide(color: Colors.grey, width: 0.4)),
          hintText: hint,
        ),
      ),
    );
  }
}
