import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../assets/colors.dart';
import './pages_infor.dart';
import '../main.dart';
import './pages_tips.dart';

class PagesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;
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
        
          const SizedBox(height: 20,),

          SizedBox(height: 40,width: 500,
            child: Container(
              alignment: Alignment.topLeft,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/images/home.png'),
                ),
                GestureDetector(
                onTap:(
                ){
                  Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(builder: (context) => StartPage()),
                  ); 
                } ,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('assets/images/monitor.png'),
                ),),
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/right-arrow.png'),
                  backgroundColor: Colors.white
                ),
                GestureDetector(
                  onTap: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PagesInfor()),
                );
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Appcolor.buttonColor,
                    backgroundImage: AssetImage('assets/images/plus.png'),
                  ),
                )
                  
              ],
              )
            ),
          ),
            const SizedBox(height: 20,),
            
            GestureDetector(
              onTap: (){
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>PagesTips()) 
                ); 
              },
              child: SizedBox(height: 90,width: screenWidth*0.9,
                child: Container(
                  decoration: BoxDecoration(
                    color: Appcolor.grey2,
                    borderRadius: BorderRadius.circular(10)
                    ),
                  child: Stack(
                    children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(), 
                      child:Column(
                        children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child:Text('Some tips you should know', style: GoogleFonts.playfairDisplay(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              ),),
                          ),

                        const SizedBox(height: 20,),

                        Container(
                          alignment: Alignment.topCenter,
                          child: Text('--Click--',style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey[200]
                              ),),
                          )
                        ]) 
                        ),

                        Container(
                            alignment: Alignment.centerRight,
                            margin: EdgeInsets.all(20),
                            child: SizedBox(height: 50,width: 50,child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/question.png'))
                                  ),
                                )
                              ,),
                            )

                          ],
                          ),
                          ),
                          )
            ), 
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
