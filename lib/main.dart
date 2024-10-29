import 'package:flutter/material.dart';
import './assets/colors.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Appcolor.backgroundColor,
          body: Container(
            margin: EdgeInsets.all(35),
            child: Column(
              children: [

                Container(
                  padding: EdgeInsets.all(35),
                  child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.asset('assets/images/hacker.png'),
                  ),
                ),

                Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'Hello World',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 30
                  ),
                ),
                )
              ], 
            ),
          ),
        ),   
      );
    }
}
