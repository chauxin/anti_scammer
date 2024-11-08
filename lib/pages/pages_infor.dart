import 'package:flutter/material.dart';
import '../assets/colors.dart';

class PagesInfor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      double screenWidth = MediaQuery.of(context).size.width;
      return Scaffold(
        backgroundColor: Appcolor.backgroundColor,
        body: Row(children: [

          const SizedBox(height: 30,),

          SizedBox(width: screenWidth,height: 500,child: Container(
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/cardA.jpg'),fit: BoxFit.fill,
            ),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75))
          ),)
          )
        ],),
      );
    }
  
}
