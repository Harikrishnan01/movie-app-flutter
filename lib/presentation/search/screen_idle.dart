import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieproj/presentation/search/screen_search.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class ScreenIdle extends StatelessWidget {
  const ScreenIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          CupertinoSearchTextField(
            backgroundColor: Colors.grey.withOpacity(0.5),
            prefixIcon: Icon(CupertinoIcons.search, color: Colors.grey),
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.grey,
            ),
            style: TextStyle(color: Colors.white),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      'Top Searches',
                      style: GoogleFonts.montserrat(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 140,
                    height: 70,
                    //color: Colors.blue,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/images/cinema1.jpeg'))),
                  )
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Text('Deluxe',
                        style: GoogleFonts.montserrat(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 140,
                    height: 70,
                    //color: Colors.blue,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/images/cinema2.jpeg'))),
                  )
                ],
              ),
              Column(
                children: [
                  Text('Deluxe',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 140,
                    height: 70,
                    //color: Colors.blue,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('asset/images/cinema3.jpeg'))),
                  )
                ],
              ),
              Column(
                children: [
                  Text('Deluxe',
                      style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.white,
                  ),
                  //const ScreenSearch(),
                ],
              
              )
            ],
          )
        ]),
      ),
    );
  }
}
