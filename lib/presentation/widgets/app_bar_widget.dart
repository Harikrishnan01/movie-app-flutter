import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter/src/widgets/framework.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            children: [
              Text(
                'Downloads',
                style: GoogleFonts.montserrat(
                    fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Column(
            children: [
              Icon(
                Icons.cast,
                color: Colors.white,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Column(
            children: [
              Container(
                width: 25,
                height: 25,
                color: Colors.blue,
              )
            ],
          ),
        ),
      ]),
    );
  }
}
