import 'package:flutter/material.dart';

class FamilyMembers extends StatefulWidget {
  @override
  State<FamilyMembers> createState() => _FamilyMembersState();
}

class _FamilyMembersState extends State<FamilyMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Family Members'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'all Family Members in the HealthCare center',
                style: TextStyle(
                  fontSize: 19,
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
                        DataCell(Text('foad')),
                        DataCell(Text("0543385873")),
                        DataCell(Text('foad@gmail.com')),
                        DataCell(Text("foadDF")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2')),
                        DataCell(Text('basel')),
                        DataCell(Text("0568734434")),
                        DataCell(Text('basel@gmail.com')),
                        DataCell(Text("baselBL")),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('3')),
                        DataCell(Text('raed')),
                        DataCell(Text("0592000891")),
                        DataCell(Text('raed.a@gmail.com')),
                        DataCell(Text("readRD")),
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
