import 'package:first_app/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key ? key}) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/home",
      routes: {
        "/" : (context)=>const LoginPage(),
        "/home" : (context)=>const Homepage(),
        "/login" : (context)=>const LoginPage(),
      },
    );
  }
}