import 'package:flutter/material.dart';
import './assets/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import './pages/pages_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scam App',
      home: StartPage(),
   );
  }
}

class StartPage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          backgroundColor: Appcolor.backgroundColor,
          body : Container(
            width: double.infinity,
            margin: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Scammer',
                  style: GoogleFonts.playfairDisplay( 
                  fontSize: 40,
                  color: Colors.white
                  ),
                ),

                SizedBox(
                  height: 500,
                  width: 500,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: RadialGradient(colors: [Appcolor.grey3,Appcolor.backgroundColor]),
                      ),
                    

                   child:Container(
                      padding: EdgeInsets.all(35),
                      child: SizedBox(
                        height: 300,
                        width: 300,
                        child: Image.asset('assets/images/hacker.png'),
                        ),
                      ),
                    ),
                    ),
                Container(
                margin: EdgeInsets.all(0),
                child: Text(
                  'Anti-Scam',
                  style: GoogleFonts.playfairDisplay(
                    fontSize: 30,
                    color: Colors.white
                  ),
                ),
                ),
                Text('Click button to jump to home page',
                style: TextStyle(
                  color: Colors.grey[300] 
                  ),
                ),

                const SizedBox(height: 100,),
                
                SizedBox(
                height: 50,
                width: 500,
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Appcolor.buttonColor,
                    ),

                  onPressed: () {
                     Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => PagesHome()),
                    ); 
                  },
                  child: Text('Let we Start', style: GoogleFonts.playfairDisplay(
                    fontSize: 30,
                  ),),
                ),
              ),
              ]
            )   
            )
          )
      );
    }
}
