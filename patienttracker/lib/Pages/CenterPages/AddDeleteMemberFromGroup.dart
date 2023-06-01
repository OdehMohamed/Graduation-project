import 'package:flutter/material.dart';
import 'package:patienttracker/Widget/Dialogs/DialogEnableDisableAccount.dart';

import '../../Widget/TextFormFieldDecoration.dart';

class AddDeleteMemberGroup extends StatefulWidget {
  const AddDeleteMemberGroup({super.key});

  @override
  State<AddDeleteMemberGroup> createState() => _AddDeleteMemberGroupState();
}

class _AddDeleteMemberGroupState extends State<AddDeleteMemberGroup> {
  final _formKey = GlobalKey<FormState>();

  bool _test = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add/Delete Member From group'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: textFormFieldDecoration('Group name*'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the group name';
                  }
                  if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
                    return 'Username can only contain letters,\nnumbers, and underscores';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: textFormFieldDecoration('UserName for Member*'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the group name';
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
                          Navigator.pop(context);
                          dialogCreateGroup(context);
                        } else {
                          dialogNameIsTaken(context);
                        }
                        _test = !_test;
                      }
                    },
                    child: Text('Add'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (_test) {
                          Navigator.pop(context);
                          dialogCreateGroup(context);
                        } else {
                          dialogNameIsTaken(context);
                        }
                        _test = !_test;
                      }
                    },
                    child: Text('Delete'),
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
