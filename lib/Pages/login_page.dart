import 'package:demoapp/Pages/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String name = " ";
  bool changeButton = false;
  //underscore means to keep the var private in dart eg string  _name="suraj";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // color: Colors.white,
        body: SingleChildScrollView(
      //for removing the overflow error in small devices it will provide scroll view
      child: Column(
        children: [
          Lottie.network(
            "https://assets6.lottiefiles.com/packages/lf20_e6qptb87.json",
            fit: BoxFit.cover,
            width: 300,
            height: 300,

            //controller
            controller: _controller,
            onLoaded: (composition) {
              // Configure the AnimationController with the duration of the
              // Lottie file and start the animation.
              _controller
                ..duration = composition.duration
                ..forward();
            },
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
                ),
                SizedBox(
                  // for giving the space b/w img and container or text
                  height: 35,
                ),
                InkWell(
                  //it is used to give splash effect when the container is pressed (login)
                  onTap: () async {
                    setState(() {
                      changeButton = true; //if we press on login button
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    //animated container will apply animation on the loginbox for some duration
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height:
                        50, //it will animate if the changeButton is true and resize the login containerheight: 50
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
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                    ),
                    //border radius is used to give the circular shape of the container
                  ),
                )

                // ElevatedButton(
                //   onPressed: () {
                //     //performs the action on press a/c the user defn conditon
                //     Navigator.pushNamed(
                //         context, MyRoutes.homeRoute); //follows the stack ds
                //   },
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(
                //       minimumSize: Size(120,
                //           40) //for setting the hight and width of the button
                //       ),
                // )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
