import 'package:flutter/material.dart';
import 'package:patienttracker/Forms/LoginForm.dart';
import 'package:patienttracker/Pages/LaunchScreen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme: AppBarTheme(color: Colors.green),
        useMaterial3: true,
      ),
      home: LaunchScreen(),
    );
  }
}
