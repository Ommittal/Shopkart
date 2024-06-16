import 'package:flutter/material.dart';
import 'package:flutter_demo1/pages/home_page.dart';
import 'package:flutter_demo1/pages/login_page.dart';
import 'package:flutter_demo1/utilis/routes.dart';

void main() {
  runApp(omapp());
}

class omapp extends StatelessWidget {
  const omapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  //this build context will re run the code because widget is immutable.
  //widget contain 3 parts => widget tree , element tree , render tree.
  //context written here is of data type element that is mutable and can be changed thus you can edit accordingly.
  //render tree work is to pass the information of code and run it to create a new widget.
  {
    var name = "naman";

    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/": (context) => login_page(),
        MyRoutes.homepage: (context) => home(),
        MyRoutes.loginpage: (context) => login_page()
      },
    );
  }
}
