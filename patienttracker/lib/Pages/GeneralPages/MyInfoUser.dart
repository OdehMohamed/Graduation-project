import 'package:flutter/material.dart';
import 'package:patienttracker/globalVar/globalvar.dart';
import '../../Widget/Dialogs/SignOutDialog.dart';
import '../../Widget/TextFormFieldDecoration.dart';
import 'MainDrawer.dart';

class MyInfoUser extends StatefulWidget {
  final userName;
  const MyInfoUser({super.key, this.userName});

  @override
  State<MyInfoUser> createState() => _MyInfoUserState();
}

class _MyInfoUserState extends State<MyInfoUser> {
  var passwordVisible = true;
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
            SizedBox(height: 100),
            Form(
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Name :              "),
                        Expanded(
                          child: TextFormField(
                            decoration: textFormFieldDecoration(""),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your first name';
                              }
                              if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                return 'First Name can only \ncontain letters';
                              }
                              return null;
                            },
                            initialValue: "Fadi ahmed Taleb mgharba",
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("UserName :       "),
                        Expanded(
                          child: TextFormField(
                            decoration: textFormFieldDecoration(""),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your first name';
                              }
                              if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                return 'First Name can only \ncontain letters';
                              }
                              return null;
                            },
                            initialValue: userName,
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Phone :              "),
                        Expanded(
                          child: TextFormField(
                            decoration: textFormFieldDecoration(""),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your first name';
                              }
                              if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                return 'First Name can only \ncontain letters';
                              }
                              return null;
                            },
                            initialValue: "0569041661",
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Email :               "),
                        Expanded(
                          child: TextFormField(
                            decoration: textFormFieldDecoration(""),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your first name';
                              }
                              if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                                return 'First Name can only \ncontain letters';
                              }
                              return null;
                            },
                            initialValue: "fadi.a.t@gmail.com",
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text("Password :         "),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            obscureText: passwordVisible,
                            decoration: InputDecoration(
                              labelText: '',
                              prefixIcon: Icon(Icons.lock),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                gapPadding: 0.0,
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    BorderSide(color: Colors.green, width: 1.5),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(
                                    () {
                                      passwordVisible = !passwordVisible;
                                    },
                                  );
                                },
                              ),
                            ),
                            initialValue: "Password",
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your password';
                              }
                              if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
                                return 'Password can only contain letters,\nnumbers, and underscores';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Back'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Update'),
                        ),
                      ],
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
