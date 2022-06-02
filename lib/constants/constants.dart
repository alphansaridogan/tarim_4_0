import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  //renkler
  static const Color green =  Color.fromRGBO(11, 172, 27, 1);
  static const Color lightGreen =  Color.fromRGBO(101, 248, 89, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color black = Colors.black;
  static const Color blue = Colors.blue;
  static const Color lightBlueAccent = Colors.lightBlueAccent;

  //Başlık için kullanılan textstyle'lar
  static const TextStyle headline1 = TextStyle(
      inherit: false,
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.bold);
  static const TextStyle headline2 = TextStyle(
      inherit: false,
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w700);
  static const TextStyle headline3 = TextStyle(
      inherit: false,
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w300);
  static TextStyle googleHeadline1 = GoogleFonts.dancingScript(
      color: white,
      locale: const Locale("tr", "TR"),
      fontSize: 40,
      fontWeight: FontWeight.bold);

  //Altyazılar için kullanılan textstyle'lar
  static const TextStyle subtitle1 =
      TextStyle(inherit: false, fontSize: 15, color: Colors.black54);
  static const TextStyle subtitle2 =
       TextStyle(inherit: false, fontSize: 15, color: Colors.black);
  static TextStyle subtitle3 =
      const TextStyle(inherit: false, fontSize: 10, color: Colors.white);
}
