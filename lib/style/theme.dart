import 'package:flutter/material.dart';

final customTheme = ThemeData(
  colorScheme: const ColorScheme.light(
      primary: Color.fromRGBO(48, 62, 78, 1),
      secondary: Colors.lightBlue,
      tertiary: Colors.indigo),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.white),
  //useMaterial3: false,
  appBarTheme: const AppBarTheme(
    backgroundColor: Color.fromRGBO(48, 62, 78, 1),
  ),
);
