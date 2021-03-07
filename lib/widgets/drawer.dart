import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageURL =
        'https://en.everybodywiki.com/images/thumb/0/04/Tushar_R_Ahmed.jpg/300px-Tushar_R_Ahmed.jpg';
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text('Tushar'),
                  accountEmail: Text('tusharsoftdev@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageURL),
                  )),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail, color: Colors.white),
              title: Text(
                'Email',
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
