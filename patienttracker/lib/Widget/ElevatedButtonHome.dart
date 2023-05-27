import 'package:flutter/material.dart';

ElevatedButtonHome() {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.grey,
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
