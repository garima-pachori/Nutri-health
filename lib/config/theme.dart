import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:medrecords/config/const.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
      primaryColor: const Color.fromARGB(255, 235, 41, 77),
      useMaterial3: true,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xffF4C2C2)),
      scaffoldBackgroundColor: const Color.fromARGB(255, 237, 129, 129),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 4, 3, 4),
      ));
}
