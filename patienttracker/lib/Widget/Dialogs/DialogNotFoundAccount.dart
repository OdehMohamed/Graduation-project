import 'package:flutter/material.dart';

DialogNotFoundAccount(context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'Not found account',
        style: TextStyle(color: Colors.red),
      ),
      content:
          const Text('Please make sure that you have entered data correctly.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Ok'),
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}
