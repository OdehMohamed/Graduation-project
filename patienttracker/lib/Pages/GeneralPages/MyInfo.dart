import 'package:flutter/material.dart';

import '../../Widget/Dialogs/SignOutDialog.dart';
import 'MainDrawer.dart';

class MyInfo extends StatefulWidget {
  final userName;
  const MyInfo({super.key, this.userName});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Info",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      // drawer:
      //     const MainDrawer("Groups", "Doctors", "Family Members", "Patients"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SingOutDialog(context);
        },
        child: Icon(Icons.logout_rounded),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        child: ListView(
          children: [
            Text(
              "This is your info",
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
