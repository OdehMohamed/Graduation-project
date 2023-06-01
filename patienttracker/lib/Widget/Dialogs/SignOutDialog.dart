import 'package:flutter/material.dart';
import '../../Forms/LoginForm.dart';

SingOutDialog(context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'Sign Out',
        style: TextStyle(color: Colors.red),
      ),
      content: const Text('Are you sure you want to sign out?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'No'),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (Route<dynamic> route) => false,
          ),
          child: const Text('Yes'),
        ),
      ],
    ),
  );
}
