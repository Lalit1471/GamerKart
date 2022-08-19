import 'package:first_app/utils/routes.dart';

import 'homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget
{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static String name = "";
  static bool changeButton = false;

  @override
  Widget build(BuildContext context)
  {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_page.png",
              fit: BoxFit.scaleDown,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text("Welcome $name",
              style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              color: Colors.indigoAccent,
            ),),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Username",
                    ),
                    onChanged: (value){
                      name = value;
                      setState(() {

                      });
                    },
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () async{
                      setState(() {
                        changeButton = true;
                      });

                      await Future.delayed(const Duration(milliseconds: 550));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: changeButton? 50: 100,
                      height: 50,
                      alignment: Alignment.center,
                      child: changeButton
                          ?const Icon(Icons.done,color: Colors.white,)
                          :const Text("Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(changeButton? 50: 10),
                        color: Colors.indigoAccent,
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   child: const Text("Login"),
                  //   onPressed: (){
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   onLongPress: (){
                  //     print("Hi long Lalit! Hehe");
                  //   },
                  //   style: TextButton.styleFrom(
                  //
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}