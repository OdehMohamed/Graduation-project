import 'package:flutter/material.dart';
import 'package:patienttracker/Forms/LoginForm.dart';
import 'package:patienttracker/Pages/GeneralPages/LaunchScreen.dart';

import 'Pages/PatientPages/PatientHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PatientTraker',
      routes: {
        '/LoginForm': (context) => LoginScreen(),
      },
      initialRoute: '/',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 195, 243, 197)),
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 195, 243, 197)),
        useMaterial3: true,
      ),
      home: LaunchScreen(),
    );
  }
}
