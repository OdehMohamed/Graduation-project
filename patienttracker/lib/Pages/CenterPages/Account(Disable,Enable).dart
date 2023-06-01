import 'package:flutter/material.dart';
import 'package:patienttracker/Widget/Dialogs/DialogEnableDisableAccount.dart';
import 'package:patienttracker/Widget/Dialogs/DialogNotFoundAccount.dart';

import '../../Widget/TextFormFieldDecoration.dart';

class AccountStatus extends StatefulWidget {
  const AccountStatus({super.key});

  @override
  State<AccountStatus> createState() => _AccountStatusState();
}

class _AccountStatusState extends State<AccountStatus> {
  final _formKey = GlobalKey<FormState>();

  bool _test = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Status'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: textFormFieldDecoration('UserName Account*'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the UserName Account';
                  }
                  if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
                    return 'Username can only contain letters,\nnumbers, and underscores';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Back'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (_test) {
                          dialogEnableAccount(context);
                        } else {
                          DialogNotFoundAccount(context);
                        }
                        _test = !_test;
                      }
                    },
                    child: Text('Enable'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (_test) {
                          dialogdisableAccount(context);
                        } else {
                          DialogNotFoundAccount(context);
                        }
                        _test = !_test;
                      }
                    },
                    child: Text('Disable'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
