import 'package:flutter/material.dart';

class Patients extends StatefulWidget {
  @override
  State<Patients> createState() => _PatientsState();
}

class _PatientsState extends State<Patients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patients'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'all Patients in the HealthCare center',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    headingTextStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromARGB(255, 43, 54, 43),
                    ),
                    dataTextStyle: TextStyle(fontSize: 14, color: Colors.black),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    columns: [
                      DataColumn(
                        label: Text(
                          '#',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Phone',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Email',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'UserName',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('1')),
                        DataCell(Text('Fadi')),
                        DataCell(Text("0543005873")),
                        DataCell(Text('fadi@gmail.com')),
                        DataCell(Text("fadiFI")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2')),
                        DataCell(Text('ahmed')),
                        DataCell(Text("0568224434")),
                        DataCell(Text('ahmed@gmail.com')),
                        DataCell(Text("ahmedAD")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('3')),
                        DataCell(Text('yaser')),
                        DataCell(Text("0592000891")),
                        DataCell(Text('yaser.a@gmail.com')),
                        DataCell(Text("yaserYR")),
                      ]),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
