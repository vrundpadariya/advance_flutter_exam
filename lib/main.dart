import 'package:flutter/material.dart';

import 'app/views/homescreen/homepage.dart';
import 'app/views/splash/splashscreen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => Splacescreen(),
        'home': (ctx) => homepage(),
      },
    ),
  );
}
