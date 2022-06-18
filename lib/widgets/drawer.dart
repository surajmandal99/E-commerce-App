import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://scontent.fcjb7-1.fna.fbcdn.net/v/t1.6435-9/84330636_2512085595778336_31223703572316160_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_ohc=mYKCkqjjowkAX-kpEMt&_nc_ht=scontent.fcjb7-1.fna&oh=00_AT_vrAUx-8P13R83NiET-QmLczXlUiz-hCaR8yhBPTiXtw&oe=62D3BC59";
    return Drawer(
      child: Container(
        color: Colors
            .deepOrange, //it will fill the whole outside the container too
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Suraj Mandal"),
                accountEmail: Text("surajxuraj@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              //for adding icons on left or right
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              //for adding icons on left or right
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              //for adding icons on left or right
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              //for adding icons on left or right
              leading: Icon(
                CupertinoIcons.headphones,
                color: Colors.white,
              ),
              title: Text(
                "Music",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
