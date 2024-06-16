// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl = "https://media-exp1.licdn.com/dms/image/C4D03AQHgXiN-D8-8GA/profile-displayphoto-shrink_200_200/0/1641334559960?e=1653523200&v=beta&t=AEnvtIrlQ9pkMN-h9W5m4wYEprn68B87H4NjS4v_axo";

    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("OM MITTAL"),
                  accountEmail: Text("111ommittal@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageurl),
                  ),
                )),
                ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text("Home",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                
                ),
                ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text("Profile",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                
                ),
                ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text("Email me",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white
                ),
                ),
                
                )
          ],
          
        ),
      ),
    );
  }
}
