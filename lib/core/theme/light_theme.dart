import 'package:flutter/material.dart';
import '../constants/colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,

  fontFamily: 'Roboto',
  buttonTheme: ButtonThemeData(buttonColor: prunusAvium),
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: prunusAvium),
  inputDecorationTheme: InputDecorationTheme(
    border: InputBorder.none,
  ),
  textTheme: TextTheme(
      headline6: TextStyle(fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontWeight: FontWeight.bold),
      subtitle2: TextStyle(color: Colors.grey)),
  appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0),
);
