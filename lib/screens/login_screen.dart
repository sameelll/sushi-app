import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_app/screens/starter_screen.dart';
import 'package:sushi_app/screens/widgets/login_button.dart';
import 'package:sushi_app/screens/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        backgroundColor: const Color(0xffF6F6F6),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Login",
          style:
              TextStyle(color: Color(0xff28b8bc), fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xff28b8bc),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: const Text(
              "Welcome Back!",
              style: TextStyle(
                  color: Color(0xff28b8bc),
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ),
          LoginForm(
            emailController: _emailController,
            passwordController: _passwordController,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            alignment: Alignment.centerRight,
            child: const Text(
              'Forgot password?',
              style: TextStyle(
                  color: Color(0xff28b8bc), fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          LoginButton(
            email: _emailController.text,
            password: _passwordController.text,
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.grey),
                children: [
                  const TextSpan(text: 'Don\t have an account? '),
                  TextSpan(
                    text: 'Register',
                    style: const TextStyle(
                        color: Color(0xff28b8bc), fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Get.to(const StarterScreen());
                      },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
