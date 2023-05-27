import 'package:flutter/material.dart';

textFormFieldDecoration(label) {
  return InputDecoration(
    labelText: label,
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.grey, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      gapPadding: 0.0,
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.green, width: 1.5),
    ),
  );
}
