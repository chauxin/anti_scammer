import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './pages_ssnrule.dart';
import '../assets/colors.dart';

class PagesSSN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
      return Scaffold(
        backgroundColor: Appcolor.backgroundColor,
        body: Column(
          children: [
            const SizedBox(height: 50,),

            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(30),
              child: Text('SSN Infor',style: GoogleFonts.playfairDisplay(fontSize: 35,color: Colors.white),)
            ),

            GestureDetector(
              onTap: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => PagesSsnrule())
                  );
              },
              child: Container(alignment:Alignment.center, padding: EdgeInsets.all(25),child: SizedBox(
                  width: screenWidth*0.8,
                  height: 120,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Appcolor.warning,
                      borderRadius: BorderRadius.circular(10),
                      ),
                    child: Column(children: [
                      Container(alignment:Alignment.topLeft,padding: EdgeInsets.all(10),
                        child: Text(
                          '  Important', style: GoogleFonts.playfairDisplay(
                            fontSize:25,
                            color: Colors.black
                            ),
                          ),),

                      Container(
                        padding: EdgeInsets.all(0),
                        child: Text(
                          'You need to open SSN permissions',style: TextStyle(fontSize: 15),
                          ),
                        ), 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                        Container(
                          padding: EdgeInsets.all(0),
                          alignment: Alignment.bottomRight,
                          child: Text('click to know more'),
                          ),

                        SizedBox(
                          height: 20,
                          width: 20,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage('assets/images/angle-right.png'))
                              ),
                            ),
                          )
                        ]),
                    ],),
                  ),
              ),)
            )
          ],
        ),
      ); 
    }
  
}
