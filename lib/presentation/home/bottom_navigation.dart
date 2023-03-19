import 'package:flutter/material.dart';
import 'package:movieproj/presentation/downloads/screen_downloads.dart';
import 'package:movieproj/presentation/fast%20laugh/screen_fast_laugh.dart';

//import 'package:flutter/src/widgets/framework.dart';
import 'package:movieproj/presentation/home/screen_homepage.dart';
import 'package:movieproj/presentation/new%20and%20hot/screen_newandhot.dart';
import 'package:movieproj/presentation/search/screen_search.dart';

class ScreenNavigation extends StatefulWidget {
  const ScreenNavigation({super.key});

  @override
  State<ScreenNavigation> createState() => _ScreenNavigationState();
}

class _ScreenNavigationState extends State<ScreenNavigation> {
  int _currentIndexValue = 0;
  final _pages = [
    ScreenHomePage(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownload(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndexValue],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndexValue,
          onTap: (newindex) {
            setState(() {
              _currentIndexValue = newindex;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections), label: 'New and Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions), label: 'Fast & laugh'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
          ]),
    );
  }
}
