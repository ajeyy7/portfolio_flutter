import 'package:flutter/material.dart';
const Color gray = Color(0xFF737373);  // #737373 - Gray
const Color white = Color(0xFFFFFFFF);  // #FFFFFF - White
const Color lightGray = Color(0xFFD9D9D9);  // #D9D9D9 - Light Gray
const Color charcoal = Color(0xFF090A18);  // #090A18 - Charcoal
 final ThemeData lightTheme = ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: lightGray,
    primarySwatch: Colors.grey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
  );

  final ThemeData darkTheme = ThemeData(
    fontFamily: 'Montserrat',
    scaffoldBackgroundColor: charcoal,
    primarySwatch: Colors.grey,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
  );