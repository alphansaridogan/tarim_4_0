import 'package:flutter/material.dart';

class Constants {
  //renkler
  static Color green = const Color.fromRGBO(11, 172, 27, 1);
  static Color lightGreen = const Color.fromRGBO(101, 248, 89, 1);
  static Color white = const Color.fromRGBO(255, 255, 255, 1);

  //Başlık için kullanılan textstyle'lar
  static TextStyle headline1 = const TextStyle(
      inherit: false,
      fontSize: 25,
      color: Colors.white,
      fontWeight: FontWeight.bold);
  static TextStyle headline2 = const TextStyle(
      inherit: false,
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.bold);
  static TextStyle headline3 = const TextStyle(
      inherit: false,
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.bold);

  //Altyazılar için kullanılan textstyle'lar
  static TextStyle subtitle1 =
      const TextStyle(inherit: false, fontSize: 15, color: Colors.white);
  static TextStyle subtitle2 =
      const TextStyle(inherit: false, fontSize: 12, color: Colors.white);
  static TextStyle subtitle3 =
      const TextStyle(inherit: false, fontSize: 10, color: Colors.white);
}
