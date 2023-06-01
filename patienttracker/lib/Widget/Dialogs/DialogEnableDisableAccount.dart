import 'package:flutter/material.dart';

dialogEnableAccount(context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'Successfully completed',
        style: TextStyle(color: Colors.green),
      ),
      content: const Text('The enable process was successfully completed.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Ok'),
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}

dialogdisableAccount(context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'successfully completed',
        style: TextStyle(color: Colors.green),
      ),
      content: const Text('The disable process was successfully completed.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Ok'),
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}

dialogCreateAccount(context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'successfully completed',
        style: TextStyle(color: Colors.green),
      ),
      content: const Text('The account has been successfully created.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Ok'),
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}

dialogCreateGroup(context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'successfully completed',
        style: TextStyle(color: Colors.green),
      ),
      content: const Text('The group has been successfully created.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Ok'),
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}

dialogNameIsTaken(context) {
  return showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: const Text(
        'Failed',
        style: TextStyle(color: Colors.red),
      ),
      content: const Text('This name is taken.'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Ok'),
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}
