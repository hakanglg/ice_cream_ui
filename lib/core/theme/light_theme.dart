import 'package:flutter/material.dart';
import 'package:ice_cream_ui/core/constants/colors.dart';

ThemeData lightTheme = ThemeData(
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
