import 'package:flutter/material.dart';

class GoogleBtn1 extends StatelessWidget {
  final Function() onPressed;
  const GoogleBtn1({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 54,
      margin: const EdgeInsets.only(top: 15, bottom: 15, left: 30, right: 30),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(36),
        border: Border.all(width: 2, color: const Color(0xff28b8bc)),
      ),
      child: TextButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/google-min.png",
              width: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            Text("Connect with Google",
                style: TextStyle(color: Colors.grey.shade700, fontSize: 16)),
          ],
        ),
        onPressed: onPressed,
      ),
    );
  }
}
