import 'package:flutter/material.dart';
import 'package:patienttracker/Forms/SignUpPage.dart';
import 'package:patienttracker/Pages/GeneralPages/MainDrawer.dart';
import 'package:patienttracker/Widget/Dialogs/SignOutDialog.dart';

import '../../Widget/ElevatedButtonHome.dart';
import '../../Widget/FloatingActionButton.dart';

class PatientHome extends StatefulWidget {
  const PatientHome({Key? key}) : super(key: key);

  @override
  State<PatientHome> createState() => _PatientHomeState();
}

class _PatientHomeState extends State<PatientHome> {
  var BloodPressureSystolic = 110,
      BloodPressureDiastolic = 70,
      OxygenSaturation = 96,
      BloodGlucoseLevel = 90,
      HeartRate = 95,
      InsulinLevel = 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: const MainDrawer(
          "My Group", "My Doctor", "My Family Member", "HealthCare Center"),
      floatingActionButton: floatButton(context),
      body: Container(
        padding: EdgeInsets.all(20),
        height: double.infinity,
        child: ListView(
          children: [
            Text(
              "Welcome!\n ",
              style: TextStyle(
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {},
                style: ElevatedButtonHome(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Image.asset(
                        'assets/images/BloodPressure.png',
                        height: 80,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Blood Pressure',
                            style: TextStyle(fontSize: 20),
                            softWrap: true,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Systolic\n${BloodPressureSystolic} mmHg",
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 151, 50, 50))),
                                Container(
                                    height: 50,
                                    child:
                                        VerticalDivider(color: Colors.white)),
                                Text(
                                    "Diastolic\n${BloodPressureDiastolic} mmHg",
                                    style: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 151, 50, 50))),
                              ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  // Add your action for the "Create Group" button here
                },
                style: ElevatedButtonHome(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Image.asset(
                        'assets/images/OxygenSaturation.png',
                        height: 80,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Oxygen Saturation (SpO2%)',
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "${OxygenSaturation}%",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 151, 50, 50)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  // Add your action for the "Create Group" button here
                },
                style: ElevatedButtonHome(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20, top: 7),
                      child: Image.asset(
                        'assets/images/BloodGlucoseLevel.png',
                        height: 80,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Blood Glucose Level',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "${BloodGlucoseLevel} Mg/DL",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 151, 50, 50)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  // Add your action for the "Create Group" button here
                },
                style: ElevatedButtonHome(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12, top: 5),
                      child: Image.asset(
                        'assets/images/HeartRate.png',
                        height: 70,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Heart Rate',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "${HeartRate} bpm",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 151, 50, 50)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: ElevatedButton(
                onPressed: () {
                  // Add your action for the "Create Group" button here
                },
                style: ElevatedButtonHome(),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0),
                      child: Image.asset(
                        'assets/images/InsulinLevel.png',
                        height: 90,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Insulin Level',
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "${InsulinLevel} uU/ml",
                            style: TextStyle(
                                color: const Color.fromARGB(255, 151, 50, 50)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                child: IconButton(
              icon: Image.asset(
                'assets/images/Alert.png',
                height: 100,
                fit: BoxFit.fill,
              ),
              onPressed: () {},
            ))
          ],
        ),
      ),
    );
  }
}
