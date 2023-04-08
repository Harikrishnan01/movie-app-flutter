import 'package:flutter/material.dart';
import 'package:movieproj/presentation/mainpage/custom_button_widget.dart';
import 'package:movieproj/presentation/widgets/main_card.dart';
import 'package:movieproj/presentation/widgets/main_page_widget.dart';
import 'package:movieproj/presentation/widgets/main_title_card.dart';
import 'package:movieproj/presentation/widgets/number_card.dart';
import 'package:movieproj/presentation/widgets/number_title_card.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          StackMethod(), 
          MainTitleCard(
            title: "Released LAst Year",
          ),
          SizedBox(
            height: 15,
          ),
          MainTitleCard(
            title: "Trending Now",
          ),
          SizedBox(
            height: 15,
          ),
          NumberTitleCard(),
          MainTitleCard(
            title: "Tense Dramas",
          ),
          SizedBox(
            height: 15,
          ),
          MainTitleCard(
            title: "South Indian Cinemas",
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Stack StackMethod() {
    return Stack(
          children: [
            Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/cinema2.jpeg'))),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButtonWidget(
                    title: "My List",
                    icon: Icons.add,
                  ),
                  PlayButton(),
                  CustomButtonWidget(icon: Icons.info, title: "Info")
                ],
              ),
            )
          ],
        );
  }

  TextButton PlayButton() {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        icon: Icon(
          Icons.play_arrow,
          size: 30,
          color: Colors.black,
        ),
        label: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ));
  }
}
