import 'package:flutter/material.dart';

class AppWidget{
  static TextStyle boldTextFieldStyle(){
    return TextStyle(color: Color(hexColor("#3787DD")),
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle semiBoldTextFieldStyle(){
    return TextStyle(color: Color(hexColor("#3787DD")),
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle LightTextFieldStyle(){
    return TextStyle(color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle HeadlineTextFieldStyle(){
    return TextStyle(color: Color(hexColor("#3787DD")),
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static TextStyle NormalTextFieldStyle(){
    return TextStyle(color: Colors.grey,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    );
  }

  static int hexColor(String color){
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }
}