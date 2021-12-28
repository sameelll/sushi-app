import 'package:flutter/material.dart';
import 'package:sushi_app/auth/auth_service.dart';
import 'package:sushi_app/screens/widgets/google_button.dart';
import 'package:sushi_app/screens/widgets/login_and_register.dart';
import 'package:sushi_app/screens/widgets/slider_dot.dart';
import 'package:provider/provider.dart';

class StarterScreen extends StatelessWidget {
  const StarterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      body: Column(
        children: <Widget>[
          Image.asset("assets/starter-min.png"),
          const SliderDot(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Get the best sushi\nin town!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xff28b8bc),
                fontSize: 32,
                fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 60,
          ),
          const LoginAndRegister(),
          GoogleBtn1(
            onPressed: () {
              context.read<AuthService>().handleSignIn();
            },
          ),
        ],
      ),
    );
  }
}
