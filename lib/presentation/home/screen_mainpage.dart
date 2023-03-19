import 'package:flutter/material.dart';
import 'package:movieproj/presentation/home/bottom_navigation.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text('Home Page'))),
      bottomNavigationBar: ScreenNavigation(),
    );
  }
}
