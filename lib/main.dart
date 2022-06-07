import 'package:flutter/material.dart'; //it's a material libarary and we can import cupationan lib to


import 'home_page.dart';

void main() {
  runApp(MyApp()); //it's a method in which we keep the app
}

class MyApp extends StatelessWidget {
  //stl it's a stateless widget in which myapp is extending teh property of statelessWidget
  //  const MyApp({Key? key}) : super(key: key); //constructor
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
