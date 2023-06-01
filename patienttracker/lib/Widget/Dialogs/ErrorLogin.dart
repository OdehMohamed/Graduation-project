import 'package:flutter/material.dart';

ErrorLogin(context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'Login failed',
        style: TextStyle(color: Colors.red),
      ),
      content: const Text(
          'Please make sure that you have entered your username and password correctly.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Ok'),
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}
