import 'package:flutter/material.dart';

import '../../../Widget/TextFormFieldDecoration.dart';

class AccountStatus extends StatelessWidget {
  const AccountStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Sign Up'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: textFormFieldDecoration('UserName Account'),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter the UserName Account';
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
                  onPressed: () {},
                  child: Text('Enable'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Disable'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
