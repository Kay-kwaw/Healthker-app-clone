import 'package:flutter/material.dart';
const primaryColor = Color.fromARGB(255, 7, 28, 183);
const secondaryColor = Color.fromARGB(255, 171, 180, 248);

class AppTexts {
  static Widget customText(String text, double fontSize, Color color) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Readex Pro',
        color: color,
        fontSize: fontSize,
      ),
    );
  }
  static Widget customButton(Function onPressed) {
    return ElevatedButton(
      style: ButtonStyle(
        
        backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            horizontal: 145,
            vertical: 13,
          ),
        ),
      ),
      onPressed: (){
        onPressed();
      },
      child: const Text('Login', style: TextStyle(
        fontFamily: 'Readex Pro',
        color: Colors.white,
        fontSize: 18,
      ),),
    );
  }
  static Widget GetStarted(String text, double fontSize, Color color) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'KumbhSans',
        color: color,
        fontSize: fontSize,
      ),
    );
}
  static Widget customButton2(Function onPressed) {
    return ElevatedButton(
      style: ButtonStyle(
        
        backgroundColor: MaterialStateProperty.all<Color>(secondaryColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          const EdgeInsets.symmetric(
            horizontal: 90,
            vertical: 13,
          ),
        ),
      ),
      onPressed: (){
        onPressed();
      },
      child: const Text('Create an account', style: TextStyle(
        fontFamily: 'Readex Pro',
        color: Colors.white,
        fontSize: 18,
      ),),
    );
  }
  static Widget images() {
    return Image.asset(
      'assets/images/gnepp_logo.png',
      width: 80,
      height: 60,
      fit: BoxFit.cover,
    );
  }
  static Widget Pharmacy() {
    return Image.asset(
      'assets/images/pharmacy_council_logo.png',
      width: 50,
      height: 50,
      fit: BoxFit.cover,
    );
  }
  
  
}