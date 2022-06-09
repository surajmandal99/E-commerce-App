import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset(
          "assets/images/login_image.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20, //gap
        ),
        Text(
          "Welcome",
          style: TextStyle(
            fontSize: 25,
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
              ),
              TextFormField(
                obscureText: true, //for hiding the pss
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(
                // for giving the space b/w img and txt
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  //performs the action on press a/c the user defn conditon
                  print("Hello suraj");
                },
                child: Text("Login"),
                style: TextButton.styleFrom(),
              )
            ],
          ),
        )
      ],
    ));
  }
}
