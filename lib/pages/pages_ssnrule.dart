import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../assets/colors.dart';

class PagesSsnrule extends StatelessWidget {
  @override 
  Widget build(BuildContext context) { 
      return Scaffold(
        backgroundColor: Appcolor.backgroundColor,
        body: Column(
          children: [
            const SizedBox(height: 50,),
            Container(
              padding: EdgeInsets.all(25),
              alignment: Alignment.topLeft,
              child: Text('Permissions',style: GoogleFonts.playfairDisplay(fontSize: 35,color: Colors.white),),

            ),
            const SizedBox(height: 40,),

            Container(alignment: Alignment.topCenter,
              child: Column(children: [
                GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AndroidRule())); 
                },
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child:Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/android.png'))
                      ),
                    )
                  )

                )
              ],),
            ),

            const SizedBox(height: 100,),

            Container(alignment: Alignment.topCenter,
              child: Column(children: [
                GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AppleRule())); 
                },
                child: SizedBox(
                  height: 200,
                  width: 200,
                  child:Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/apple-logo.png'))
                      ),
                    )
                  )

                )
              ],),
            )
          ],
        ),
      );
    }
}

class AndroidRule extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Appcolor.backgroundColor,
        body: Column(
          children: [
            const SizedBox(height: 50,),

            Container(padding: EdgeInsets.all(25),alignment: Alignment.topLeft,
              child: Text('Android',style: GoogleFonts.playfairDisplay(fontSize: 35,color: Colors.white),),
            ),

            const SizedBox(height: 50,),
            SizedBox( 
              height: 100,
              width: 100,
              child:Container(alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/android.png'))
                )
              ),
            ),

            Container(
              padding: EdgeInsets.all(25),
              child: 
              Text('You need to go to the system settings to enable the permission to read text messages, otherwise you will not be able to use the program normally.',
              style: GoogleFonts.rem(fontSize: 25,color: Colors.grey[500]),),
            )
          ],
        ),
      );
    }
}

class AppleRule extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Appcolor.backgroundColor,
        body: Column(
          children: [
            const SizedBox(height: 50,),

            Container(padding: EdgeInsets.all(25),alignment: Alignment.topLeft,
              child: Text('Apple',style: GoogleFonts.playfairDisplay(fontSize: 35,color: Colors.white),),
            ),

            const SizedBox(height: 50,),
            SizedBox( 
              height: 100,
              width: 100,
              child:Container(alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/apple-logo.png'))
                )
              ),
            ),

            Container(
              padding: EdgeInsets.all(25),
              child: 
              Text('Please select the text message you need to identify in the software. The system may pop up a pop-up window. Please give the software some permissions.',
              style: GoogleFonts.rem(fontSize: 25,color: Colors.grey[300]),),
            )
          ],
        ),
      );
    }
}
