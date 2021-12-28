import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_app/screens/starter_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var duration = const Duration(seconds: 3);

    Future.delayed(duration, () {
      Get.to(() => const StarterScreen());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background-min-title.png"), fit: BoxFit.cover)),
      ),
    );
  }
}
