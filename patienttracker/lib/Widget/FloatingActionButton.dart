import 'package:flutter/material.dart';

import 'SignOutDialog.dart';

floatButton(context) {
  return FloatingActionButton(
    onPressed: () {
      SingOutDialog(context);
    },
    child: Icon(Icons.logout_rounded),
    backgroundColor: Color.fromARGB(255, 195, 243, 197),
  );
}
