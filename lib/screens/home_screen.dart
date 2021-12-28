import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sushi_app/auth/auth_service.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final authService = Provider.of<AuthService>(context);


    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Page'),
            ElevatedButton(
              onPressed: () {
                context.read<AuthService>().signOut();
                Get.back();
              },
              child: const Text('Sign Out'),
            )
          ],
        ),
      ),
    );
  }
}
