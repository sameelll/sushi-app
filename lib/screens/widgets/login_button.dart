import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/auth/auth_service.dart';

class LoginButton extends StatelessWidget {
  final String email;
  final String password;

  const LoginButton({
    Key? key,
    required this.email,
    required this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: const Color(0xff28b8bc),
        ),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              alignment: Alignment.center,
              padding: MaterialStateProperty.all(
                  const EdgeInsets.only(top: 15, bottom: 15)),
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              )),
          onPressed: () {
            context
                .read<AuthService>()
                .signIn(email: email, password: password);
          },
          child: const Text(
            "Login",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
