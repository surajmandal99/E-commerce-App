import 'package:flutter/material.dart'; //it's a material libarary and we can import cupationan lib to

import 'Pages/home_page.dart';
import 'Pages/login_page.dart';

void main() {
  runApp(MyApp()); //it's a method in which we keep the app
}

class MyApp extends StatelessWidget {
  //stl it's a stateless widget in which myapp is extending teh property of statelessWidget
  //  const MyApp({Key? key}) : super(key: key); //constructor
  @override //it's a process of overriding the method with your own task
  Widget build(
      BuildContext
          context) //context is piece of information for getting the position
  {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.yellow),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/home", //by default it will take u to homepage
      routes: {
        //here routes means the road or path "/" is a default route
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/login": (context) => LoginPage()
      },
    );
  }
}
