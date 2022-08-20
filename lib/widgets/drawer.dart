import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget
{
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      backgroundColor: Colors.indigoAccent,
      child: ListView(
        children: const [
          DrawerHeader(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: UserAccountsDrawerHeader(
            margin : EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.indigoAccent),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
              accountName: Text("Lalit"),
              accountEmail: Text("alalitkumar02@gmail.com")
            ,)
          ,),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.white,),
            title: Text("Home", style: TextStyle(color: Colors.white), textScaleFactor: 1.2,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.white,),
            title: Text("Profile", style: TextStyle(color: Colors.white), textScaleFactor: 1.2,),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.white,),
            title: Text("Email", style: TextStyle(color: Colors.white), textScaleFactor: 1.2,),
          )
        ],
      ),
    );
  }
}