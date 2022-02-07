import 'package:flutter/material.dart';

import '../constants/colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Roboto',
  buttonTheme: const ButtonThemeData(buttonColor: prunusAvium),
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: prunusAvium),
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
  ),
  textTheme: const TextTheme(
      headline6: TextStyle(fontWeight: FontWeight.bold),
      bodyText1: TextStyle(fontWeight: FontWeight.bold),
      subtitle2: TextStyle(color: Colors.grey)),
  appBarTheme: const AppBarTheme(color: Colors.transparent, elevation: 0),
);
