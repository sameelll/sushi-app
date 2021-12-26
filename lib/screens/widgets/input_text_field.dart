import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField(
      {Key? key,
      required this.label,
      required this.onChange,
      this.password = false})
      : super(key: key);

  final String label;
  final Function onChange;
  final bool password;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: password,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.grey),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff28b8bc),
            width: 2,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff28b8bc),
            width: 2,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 2,
          ),
        ),
      ),
    );
  }
}
