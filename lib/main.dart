import 'package:flutter/material.dart';
import 'package:movieproj/home.dart';

void main(List<String> args) {
  runApp(hari());
}

class hari extends StatelessWidget {
  const hari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: homepage(),
    );
  }
}
