import 'package:flutter/material.dart';
import 'package:patienttracker/Forms/LoginForm.dart';
import 'package:patienttracker/Forms/SignUp.dart';
import 'package:patienttracker/Pages/LaunchScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PatientTraker',
      routes: {
        '/LoginForm': (context) => LoginScreen(),
      },
      initialRoute: '/',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LaunchScreen(),
    );
  }
}
