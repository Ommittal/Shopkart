// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';
//import 'package:flutter/rendering.dart';
import 'package:flutter_demo1/utilis/routes.dart';
//import 'package:flutter/src/widgets/form.dart';

class login_page extends StatefulWidget {
  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  String name = "";
  bool changebutton = false;
  //form key used below
  //final _formkey = GlobalKey<FormState>();
  //movetohome(BuildContext context) async {
  //  var f = _formkey.currentState;
  // if (f!.validate()) {
  //
  //  }
  //}

  @override
  Widget build(BuildContext context) {
    return Material(
        //key is used to operate form for proper submission
        //key: _formkey,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Welcome $name",
                //$ is used to express any variable in between
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SingleChildScrollView(
                child: Form(
                  child: Column(
                    children: [
                      Padding(
                        //symmetric padding to get exact position
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter Username",
                            labelText: "Username",
                          ),
                          onChanged: (value) {
                            name = value;
                            setState(() {});
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "username not defined";
                            }
                          }
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Enter password",
                            labelText: "Password",
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(changebutton ? 50 : 8),
                child: InkWell(
                  onTap: (() async {
                    setState(() {
                      changebutton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    await Navigator.pushNamed(context, MyRoutes.homepage);
                    setState(() {
                      changebutton = false;
                    });
                  }),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changebutton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changebutton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text("Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                    decoration: BoxDecoration(

                        //shape: changebutton? BoxShape.circle:BoxShape.rectangle,
                        ),
                  ),
                ),
              )
              // ElevatedButton(
              // onPressed: () {
              //   Navigator.pushNamed(context, MyRoutes.homepage);
              // },
              // child: Text("login"),
              // style: TextButton.styleFrom(minimumSize: Size(150, 50)),
              //)
              //
            ],
          ),
        ));
  }
}
