import 'package:sushi_app/auth/auth_service.dart';
import 'package:sushi_app/auth/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/screens/splash_screen.dart';
import 'package:sushi_app/screens/starter_screen.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return StreamBuilder<UserAttributes?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<UserAttributes?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final UserAttributes? user = snapshot.data;
          return user == null ? const SplashScreen() : const StarterScreen();
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
