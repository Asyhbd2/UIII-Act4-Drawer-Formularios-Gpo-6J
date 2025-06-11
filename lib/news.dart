import 'package:flutter/material.dart';

class News extends StatelessWidget {
  const News ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News Page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("News"),
      ),
    );
  }
}