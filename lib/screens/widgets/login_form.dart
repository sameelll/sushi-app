import 'package:flutter/material.dart';
import 'package:sushi_app/screens/widgets/input_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    required this.emailController,
    required this.passwordController,
    Key? key,
  }) : super(key: key);

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        children: <Widget>[
          InputTextField(
            controller: emailController,
            label: 'Email',
            
          ),
          const SizedBox(
            height: 16,
          ),
          InputTextField(
            controller: passwordController,
            password: true,
            label: 'Password',
          ),
        ],
      ),
    );
  }
}
