import 'package:flutter/material.dart';

class Themes {
  // 🎨 Colors
  static const Color pink = Colors.pink;
  static const Color blue = Colors.blue;
  static const Color yellow = Colors.yellow;
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color red = Colors.red;
  static const Color deepPurple = Colors.deepPurple;
  static const Color teal = Colors.teal;
  static const Color lightOrange = Colors.orange;
  static const Color lightGreenAccent = Colors.lightGreenAccent;
  static const Color darkblue = Color.fromARGB(255, 4, 58, 102);
  static const Color grey = Color.fromARGB(255, 223, 219, 219);
  static const Color darkgrey = Color.fromARGB(255, 73, 71, 71);
  static const Color blue1 = Color.fromARGB(255, 61, 81, 116);
  static const Color darkgrey1 = Color.fromARGB(255, 39, 38, 38);

  // ✅ Font style helper
  static TextStyle textStyle({
    double fontSize = 14,
    Color color = Colors.white,
    FontWeight fontWeight = FontWeight.w400, // default Regular
  }) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
      fontFamily: "Montserrat",
    );
  }

  // 👉 Ready-made styles (optional shortcut)
  static TextStyle regular({
    double fontSize = 14,
    Color color = Colors.white,
  }) =>
      textStyle(fontSize: fontSize, color: color, fontWeight: FontWeight.w400);

  static TextStyle semiBold({
    double fontSize = 14,
    Color color = Colors.white,
  }) =>
      textStyle(fontSize: fontSize, color: color, fontWeight: FontWeight.w600);


}
