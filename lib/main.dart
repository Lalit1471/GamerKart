import 'package:first_app/pages/loginpage.dart';
import 'package:first_app/widgets/themes.dart';
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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/" : (context)=>const LoginPage(),
        MyRoutes.homeRoute : (context)=>const Homepage(),
        MyRoutes.loginRoute : (context)=>const LoginPage(),
      },
    );
  }
}