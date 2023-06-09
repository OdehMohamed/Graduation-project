import 'package:flutter/material.dart';
import 'package:patienttracker/Forms/SignUpPage.dart';
import 'package:patienttracker/Pages/CenterPages/AddDeleteMemberFromGroup.dart';
import 'package:patienttracker/Pages/CenterPages/CreateGroup.dart';
import 'package:patienttracker/Pages/GeneralPages/MainDrawer.dart';
import 'package:patienttracker/Widget/Dialogs/SignOutDialog.dart';
import 'package:patienttracker/globalVar/globalvar.dart';

import '../../Widget/ElevatedButtonHome.dart';
import '../../Widget/FloatingActionButton.dart';
import 'Account(Disable,Enable).dart';

class CenterHome extends StatelessWidget {
  const CenterHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      drawer:
          const MainDrawer("Groups", "Doctors", "Family Members", "Patients"),
      floatingActionButton: floatButton(context),
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        child: ListView(
          children: [
            Text(
              "Welcome!\n ",
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: ElevatedButtonHome(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 40),
                      child: Image.asset(
                        'assets/images/addPerson.png',
                        height: 90,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Create User Account',
                        style: TextStyle(fontSize: 24),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  // Add your action for the "Create Group" button here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CreateGroup()),
                  );
                },
                style: ElevatedButtonHome(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 40),
                      child: Image.asset(
                        'assets/images/createGroup.png',
                        height: 60,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Create Group',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AccountStatus()),
                  );
                },
                style: ElevatedButtonHome(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, right: 40),
                      child: Image.asset(
                        'assets/images/disableAccount.png',
                        height: 100,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Disable/Enable User Account',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  // Add your action for the "Create Group" button here

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddDeleteMemberGroup()),
                  );
                },
                style: ElevatedButtonHome(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, right: 40),
                      child: Image.asset(
                        'assets/images/createGroup.png',
                        height: 60,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Add/Delete Member from Group',
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
