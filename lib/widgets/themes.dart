import 'package:flutter/material.dart';

class MyTheme
{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.indigo,
      // appBarTheme: const AppBarTheme(
      //   color: Colors.white,
      //   elevation: 0.0,
      //   iconTheme: IconThemeData(color: Colors.black),
      //   toolbarTextStyle: TextStyle(),
      // )
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
  );
}