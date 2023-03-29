import 'package:flutter/material.dart';
import 'package:movieproj/presentation/downloads/screen_downloads.dart';

import 'package:movieproj/presentation/home/screen_mainpage.dart';
import 'package:movieproj/presentation/search/screen_idle.dart';
import 'package:movieproj/presentation/widgets/app_bar_widget.dart';

void main(List<String> args) {
  runApp(hari());
}

class hari extends StatelessWidget {
  const hari({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
              bodyText1: TextStyle(color: Colors.white),
              bodyText2: TextStyle(color: Colors.white))),
      home: ScreenIdle(),
    );
  }
}
