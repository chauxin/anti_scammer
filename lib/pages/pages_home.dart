import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../assets/colors.dart';

class PagesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.backgroundColor,
      appBar: AppBar(
      backgroundColor:Appcolor.backgroundColor,
        // title: Text('Scam',style: TextStyle(color: Colors.grey[300]),),
        leading: Icon(
          Icons.menu,
          color: Colors.grey[300],
        ),
      ),
      body: Padding(padding: EdgeInsets.all(25),child: SingleChildScrollView(child:  Column(
        children: [
          
          Container(
          alignment: Alignment.centerLeft,
          child: Text('Discover',
            style: GoogleFonts.playfairDisplay(
              fontSize: 35,
              color: Colors.grey[300]
            ),
            ),
          ),

          const SizedBox(height: 20,),

          Container(
            alignment: Alignment.centerLeft,
            child: Text('New information',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[500]
              ),
            ),
          ),
          
          SizedBox(
          height: 200,
          width: 800,
          child :Showinfor(),
            ),
          const SizedBox(height: 800,)

          ], 
        )
      )
      ), 
    );     
   }
}

class Showinfor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        buildcardImage('A card', AssetImage('assets/images/cardB.jpg')),
        buildcardImage('B card', AssetImage('assets/images/cardA.jpg')),
        buildcardImage('C card', AssetImage('assets/images/cardC.jpg')),
        buildcardImage('D card', AssetImage('assets/images/cardD.jpg')),
        buildcardImage('E card', AssetImage('assets/images/cardE.jpg')),
        buildcardImage('F card', AssetImage('assets/images/cardF.jpg')),

      ],
    );    
  }  

  Widget buildcardText(String text, Color color){
      return Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15)
        ),
        child: SizedBox(
          height: 40,
          width: 40,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Text(
            text, style: GoogleFonts.playfairDisplay(
              fontSize: 20
            ),
            ),
          ),
        ),
    );
  }

  Widget buildcardImage(String text, AssetImage image){
    return Container(
      margin: EdgeInsets.all(20), 
      decoration: BoxDecoration(
        image: DecorationImage(image: image,
          fit: BoxFit.fill
        ),
      borderRadius: BorderRadius.circular(15) 
      ),
    );
  }
}
