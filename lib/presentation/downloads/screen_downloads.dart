import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieproj/presentation/widgets/app_bar_widget.dart';

class ScreenDownload extends StatelessWidget {
  const ScreenDownload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: AppBarWidget()),
      body: ListView(
        children: [
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    'Smart Downloads',
                    style: GoogleFonts.montserrat(
                        fontSize: 10, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Introducing Downloads For You',
                    style: GoogleFonts.montserrat(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'We will download a personalised section of \n movies and shows for you,so there is\n always something to watch on your\n device',
                    textAlign: TextAlign.center,
                  )
                ],
              )
            ],
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 190,
                    backgroundColor: Colors.blue,
                  ),
                  Transform.rotate(
                    angle: 15 * pi / 180,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 300, bottom: 10),
                      child: Container(
                        width: 200,
                        height: 230,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('asset/images/cinema1.jpeg'))),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: -15 * pi / 180,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 300, bottom: 10),
                      child: Container(
                        width: 220,
                        height: 240,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('asset/images/cinema2.jpeg'))),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: 0 * pi / 180,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Container(
                        width: 280,
                        height: 290,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage('asset/images/cinema3.jpeg'))),
                      ),
                    ),
                  )
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  color: Colors.blue,
                  onPressed: () {},
                  child: Text(
                    'Set up',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                  color: Colors.white,
                  onPressed: () {},
                  child: Text(
                    'See What You Can Download',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
