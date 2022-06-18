import 'package:demoapp/Pages/utils/routes.dart';
import 'package:demoapp/widgets/themes.dart';
import 'package:flutter/material.dart'; //it's a material libarary and we can import cupationan lib to

import 'Pages/home_page.dart';
import 'Pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp()); //it's a method in which we keep the app
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); //constructor
  @override //it's a process of overriding the method with your own task
  Widget build(
      BuildContext
          context) //context is piece of information for getting the position
  {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.LightTheme(context),
      debugShowCheckedModeBanner: false, //for seeing the banner on the emulator
      darkTheme: MyTheme.DarkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) =>
            HomePage(), //it will take u to the homepage directly
        MyRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
