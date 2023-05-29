import 'package:flutter/material.dart';

ElevatedButtonHome() {
  return ElevatedButton.styleFrom(
    backgroundColor: Color.fromARGB(255, 229, 248, 230),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        bottomLeft: Radius.circular(50),
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    padding: EdgeInsets.zero,
    minimumSize: Size(350, 100),
  );
}
