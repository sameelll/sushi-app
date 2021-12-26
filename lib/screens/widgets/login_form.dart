import 'package:flutter/material.dart';
import 'package:sushi_app/screens/widgets/input_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: <Widget>[
          InputTextField(
            label: 'Email',
            onChange: (value) {},
          ),
          const SizedBox(
            height: 16,
          ),
          InputTextField(
            password: true,
            label: 'Password',
            onChange: (value) {},
          ),
        ],
      ),
    );
  }
}
