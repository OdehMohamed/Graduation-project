import 'package:flutter/material.dart';
import 'package:patienttracker/Widget/SignOutDialog.dart';

class MainDrawer extends StatelessWidget {
  final String opt1, opt2, opt3, opt4;
  const MainDrawer(this.opt1, this.opt2, this.opt3, this.opt4, {super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shadowColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: Colors.green),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Icon.png',
                    height: 70,
                  ),
                  Text(
                    "Patient Tracker",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
          ListTile(
            title: Text(
              "My Info",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          Divider(
            height: 1,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              opt1,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          Divider(
            height: 1,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              opt2,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          Divider(
            height: 1,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              opt3,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          Divider(
            height: 1,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              opt4,
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          Divider(
            height: 1,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              "Contact us",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          Divider(
            height: 1,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              "About us",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {},
          ),
          Divider(
            height: 1,
            color: Colors.green,
          ),
          ListTile(
            title: Text(
              "Sign out",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            onTap: () {
              SingOutDialog(context);
            },
          ),
        ],
      ),
    );
  }
}