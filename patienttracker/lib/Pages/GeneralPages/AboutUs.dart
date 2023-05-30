import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Column(
          children: [
            Text(
              'About Our Application',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Patient tracker App technology is a rapidly evolving field that has the potential to transform the way that healthcare is delivered. ',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
            Text(
              'Our mission is to innovate and create solutions that make a positive impact on people\'s health lives.',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
