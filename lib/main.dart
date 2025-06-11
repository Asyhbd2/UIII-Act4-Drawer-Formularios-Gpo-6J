import 'package:flutter/material.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/profile.dart';
import 'package:myapp/news.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/profile": (context) => Profile(),
        "/news": (context) => News(),
      },
    );
  }
}