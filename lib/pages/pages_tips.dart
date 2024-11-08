import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../assets/colors.dart';

class PagesTips extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
        return Scaffold(
          backgroundColor: Appcolor.backgroundColor,
          body: Container(
            padding: EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40,),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.all(20),
                    child: Text('Tips',style: GoogleFonts.playfairDisplay(
                      fontSize: 40,
                      color: Colors.white
                    ),),
                  ),

                  const SizedBox(height: 20,),

                  BuildInfors()
                ],
              ),
            ),
          ),
        ); 
      }
    }

    class BuildInfors extends StatelessWidget{
      @override
      Widget build(BuildContext context) {
          return Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  information('Unknow Website',"Don't click unknown website and input password"),
                  information('Unknow apps', "Don't download any unknown apps.Download apps in believble platform."),
                  information('Similar domains', 'Websites will imitate the domain names of similar websites.'),
                ],
              )
          ); 
        }
          
      Widget information(String title, String text){
        return SizedBox(
          height: 500,
          width: 400,
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Appcolor.grey2, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.all(20),
                child: Text(title,style: GoogleFonts.playfairDisplay(
                    fontSize: 50,
                    color :Colors.white
                    ),)
                ),

              const SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.only(left: 20,),
                alignment: Alignment.topLeft,
                child: Text(text,style: GoogleFonts.playfairDisplay(
                    fontSize: 30,
                    color: Colors.grey[300]
                    ),),
                ),
              
              Container(
                alignment: Alignment.bottomRight,
                child: SizedBox(height: 100,width: 100,
                  child: Container(
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage('assets/images/lamp.png'))
                      ),
                    )
                  ,),

              )
              ],
              ),
          )
        );
      }
        }
