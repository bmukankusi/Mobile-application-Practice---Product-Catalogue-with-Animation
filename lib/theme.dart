import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primaryColor: const Color.fromARGB(255, 2, 50, 88),
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(255, 2, 50, 88),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: Colors.grey,
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
      color: Colors.grey[850],
    ),
  );
}
