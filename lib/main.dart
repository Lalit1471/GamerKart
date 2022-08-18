import 'package:first_app/pages/loginpage.dart';
import 'package:flutter/material.dart';
import 'pages/homepage.dart';
import 'utils/routes.dart';

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
      debugShowCheckedModeBanner: true,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      // initialRoute: "/home",
      routes: {
        "/" : (context)=>const LoginPage(),
        MyRoutes.homeRoute : (context)=>const Homepage(),
        MyRoutes.loginRoute : (context)=>const LoginPage(),
      },
    );
  }
}