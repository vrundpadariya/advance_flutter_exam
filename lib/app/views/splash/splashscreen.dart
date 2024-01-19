import 'dart:async';

import 'package:flutter/material.dart';

class Splacescreen extends StatelessWidget {
  const Splacescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
    return Scaffold(
      backgroundColor: Color(0xfff7efe9),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "lib/app/assets/splas2.gif",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text("Come and laugh with us"),
            const Text("Share your Jokes with your friends"),
          ],
        ),
      ),
    );
  }
}
