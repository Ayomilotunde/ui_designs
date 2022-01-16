import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
   const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return  MaterialApp(
debugShowCheckedModeBanner: false,
      title: 'data',
      home: Scaffold(
     backgroundColor: Colors.white,
        body:
         Center(
          child: SingleChildScrollView(

           child: SizedBox(
             child: Stack(
               children: [
                 Positioned(
                   top: 200,
                   left: -100,
                   child: Container(
                     width: 300,
                       height: 300,

                     decoration: const BoxDecoration(
                       color: Colors.amber,
                       borderRadius: BorderRadius.all( 
                         Radius.circular(150 )
                       )
                     ),
                   ),
                 ),
                 Positioned(
                   bottom: 10,
                   right: -15,
                   child: Container(
                     width: 200,
                     height: 200,
                     decoration: const BoxDecoration(
                       color: Colors.lightBlueAccent,
                         borderRadius: BorderRadius.all(
                             Radius.circular(100 )
                         )
                     ),
                   ),
                 ),
                  Positioned(
                      child: BackdropFilter(
                        filter:  ImageFilter.blur(
                          sigmaX: 80,
                          sigmaY: 80,
                        ),
                        child: Container(),
                      )),
                  SizedBox(
                   width: double.infinity,
                   child:
                   Padding(
                     // padding: const EdgeInsets.all(10.0),
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: Column(
                       children: [
                         const SizedBox(
                           height: 50,
                         ),
                         _logo(),
                         const SizedBox(
                           height: 70,
                         ),
                         _loginLabel(),
                         const SizedBox(
                           height: 50,
                         ),
                         _labelTextInput("Email", "youranme@example.com", false),
                         const SizedBox(
                           height: 50,
                         ),
                         _labelTextInput("Password", "yourPassword", true),
                         const SizedBox(
                           height: 50,
                         ),
                         _loginButton(),
                         const SizedBox(
                           height: 70,
                         ),
                         _signUpButton("Don't have an account yet?", Colors.red),
                         const SizedBox(
                           height: 10,
                         ),
                         _signUpButton("SignUp", Colors.black),
                         const SizedBox(
                           height: 190,
                         ),
                       ],
                     ),
                   ),
                 )
               ],
             ),
           ),
        ),
        ),
      ),

    );
  }
}

Widget _signUpButton(String label, Color textColor) {
  return Text(
   label,
    style: GoogleFonts.josefinSans(
      textStyle:  TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w800,
        color: textColor,
      )
    ),
  );
}

Widget _loginButton() {
  return Container(
    margin: const EdgeInsets.all(10),
    width: double.infinity,
    height: 60,
    decoration: const BoxDecoration(
       borderRadius: BorderRadius.all(Radius.circular(30))
    ),
    child:  ElevatedButton(onPressed: () => "",
      child: Text("Login",
      style: GoogleFonts.josefinSans(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w800,
          fontSize: 25,
          color: Colors.white,
        )
      ),
      ),

    ) ,
  );
}

Widget _labelTextInput(String label, String hintText, bool isPassword) {

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Text(label,
         style: GoogleFonts.josefinSans(
             textStyle: const TextStyle(
               color: Colors.black,
               fontWeight: FontWeight.w600,
               fontSize: 20,
             )
         ),),
      TextField(
        obscureText: isPassword,
        cursorColor: Colors.deepPurple,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.josefinSans(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400
            )
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blueAccent,
            )
          )
        ),
      )
    ],
  );
}

Widget _loginLabel() {
  return  Center(
    child: Text("Login",
      style: GoogleFonts.josefinSans(
         textStyle: const TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.w900,
           fontSize: 34,
         )
      ), ),

  );
}

Widget _logo() {
  String logoIcon = "https://uilogos.co/img/logomark/kyan.png";


  return Center(
    child: SizedBox(
      child: Image.network(logoIcon),
      height: 80,
    ),
  );
}
