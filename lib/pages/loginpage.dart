import 'homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget
{
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {

    return Material(
      color: Colors.white,
      child: Column(
        children: [
          // Image.asset(
          //   "assets/images/login_page.png",
          //   fit: BoxFit.contain,
          // ),
          const SizedBox(
            height: 20.0,
          ),
          const Text("Welcome", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal,
            color: Colors.blue,
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Password",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: (){
                    print("Hi Lalit!");
                  },
                  onLongPress: (){
                    print("Hi long Lalit! Hehe");
                  },
                  style: TextButton.styleFrom(

                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}