// ignore_for_file: file_names, unused_import, unused_element, prefer_const_constructors

import 'package:flutter/material.dart';

class ThemeClass {
  Color lightTextColour = Color.fromARGB(255, 0, 0, 0);
  Color darkTextColour = Color.fromARGB(255, 255, 255, 255);
  Color lightBackgroundColour = Color.fromARGB(255, 255, 255, 255);
  Color darkBackgroundColour = Color.fromARGB(255, 37, 37, 37);

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: _themeClass.lightBackgroundColour,
      secondary: _themeClass.lightTextColour
    ));

    static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: _themeClass.darkBackgroundColour,
      secondary: _themeClass.darkTextColour
    )
  );

}

ThemeClass _themeClass = ThemeClass();