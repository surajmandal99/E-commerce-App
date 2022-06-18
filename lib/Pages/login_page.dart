import 'package:demoapp/Pages/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  // late final AnimationController _controller;

  // @override
  // void initState() {
  //   super.initState();

  //   _controller = AnimationController(vsync: this);
  // }

  // @override
  // void dispose() {
  //   _controller.dispose();
  //   super.dispose();
  // }

  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    //whenever the login is pressed we will move to home
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true; //if we press on login button
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changeButton =
            false; //if poped means coming back then the button will be same
      });
    }
  }

  //underscore means to keep the var private in dart eg string  _name="suraj";
  @override
  Widget build(BuildContext context) {
    return Material(
        // color: Colors.white,
        child: SingleChildScrollView(
      //for removing the overflow error in small devices it will provide scroll view
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Lottie.network(
              "https://assets6.lottiefiles.com/packages/lf20_e6qptb87.json",
              fit: BoxFit.cover,
              width: 300,
              height: 300,
            ),
            SizedBox(
              height: 20, //gap b/w username and pss
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      //for decorating the input text
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username Can't be empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      //it show to name whenever the user gives the input on the username and it will be shown to the welcome box
                      name = value;
                      setState(() {
                        //it will again call the build method and change the ui
                      });
                    },
                  ),
                  TextFormField(
                      obscureText: true, //for hiding the pss
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password Can't be empty";
                        } else if (value.length < 7) {
                          return "Password length should be atleast 7";
                        }
                        return null;
                      }),
                  SizedBox(
                    // for giving the space b/w img and container or text
                    height: 35,
                  ),
                  Material(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    child: InkWell(
                      //it is used to give splash effect when the container is pressed (login)
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        //animated container will apply animation on the loginbox for some duration
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height:
                            50, //it will animate if the changeButton if true and resize the login containerheight: 50
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.yellow,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
