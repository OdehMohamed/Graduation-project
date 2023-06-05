import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Groups'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 100),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'all Groups in the HealthCare center',
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
                          'Number Of member',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('1')),
                        DataCell(Text('Group1')),
                        DataCell(
                          Expanded(
                            child: ListTile(
                              title: Text('3 Members'),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        padding: EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Expanded(
                                            child: Table(
                                              defaultColumnWidth:
                                                  FixedColumnWidth(100.0),
                                              border: TableBorder.all(
                                                color: Colors.black,
                                                width: 1.0,
                                              ),
                                              children: [
                                                TableRow(
                                                  decoration: BoxDecoration(
                                                    color: Color.fromARGB(
                                                        255, 96, 240, 96),
                                                  ),
                                                  children: [
                                                    TableCell(
                                                      child: Text(
                                                        ' Name',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                    TableCell(
                                                      child: Text('Phone',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                    TableCell(
                                                      child: Text('Email',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                    TableCell(
                                                      child: Text('TypeOfUser',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                    TableCell(
                                                      child: Text('UserName',
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: [
                                                    TableCell(
                                                      child: Text(' Fadi.A.T'),
                                                    ),
                                                    TableCell(
                                                      child:
                                                          Text(' 0569042661'),
                                                    ),
                                                    TableCell(
                                                      child: Text(
                                                          ' fadi.a.t@gmail.com '),
                                                    ),
                                                    TableCell(
                                                      child: Text(' patient'),
                                                    ),
                                                    TableCell(
                                                      child: Text(' patient'),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: [
                                                    TableCell(
                                                      child: Text(' Ahmed'),
                                                    ),
                                                    TableCell(
                                                      child:
                                                          Text(' 0599954325'),
                                                    ),
                                                    TableCell(
                                                      child: Text(
                                                          ' ahmed.o@gmail.com'),
                                                    ),
                                                    TableCell(
                                                      child: Text(
                                                          ' Family Member'),
                                                    ),
                                                    TableCell(
                                                      child:
                                                          Text(' familyMember'),
                                                    ),
                                                  ],
                                                ),
                                                TableRow(
                                                  children: [
                                                    TableCell(
                                                      child: Text(' Khaled'),
                                                    ),
                                                    TableCell(
                                                      child: Text('0522348891'),
                                                    ),
                                                    TableCell(
                                                      child: Text(
                                                          ' khaled.a@gmail.com'),
                                                    ),
                                                    TableCell(
                                                      child: Text(' Doctor'),
                                                    ),
                                                    TableCell(
                                                      child: Text(' doctor'),
                                                    ),
                                                  ],
                                                ),
                                                // ... Add more rows as needed
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('2')),
                        DataCell(Text('Group2')),
                        DataCell(
                          Expanded(
                            child: ListTile(
                              title: Text('3 Members'),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        padding: EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Table(
                                            defaultColumnWidth:
                                                FixedColumnWidth(100.0),
                                            border: TableBorder.all(
                                              color: Colors.black,
                                              width: 1.0,
                                            ),
                                            children: [
                                              TableRow(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 96, 240, 96),
                                                ),
                                                children: [
                                                  TableCell(
                                                    child: Text(
                                                      ' Name',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Text('Phone',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                  TableCell(
                                                    child: Text('Email',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                  TableCell(
                                                    child: Text('TypeOfUser',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                  TableCell(
                                                    child: Text('UserName',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  TableCell(
                                                    child: Text('Cell 4'),
                                                  ),
                                                  TableCell(
                                                    child: Text('Cell 5'),
                                                  ),
                                                  TableCell(
                                                    child: Text('Cell 6'),
                                                  ),
                                                  TableCell(
                                                    child: Text('TypeOfUser'),
                                                  ),
                                                  TableCell(
                                                    child: Text('UserName'),
                                                  ),
                                                ],
                                              ),
                                              // ... Add more rows as needed
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('3')),
                        DataCell(Text('Group3')),
                        DataCell(
                          Expanded(
                            child: ListTile(
                              title: Text('3 Members'),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        padding: EdgeInsets.all(16.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Table(
                                            defaultColumnWidth:
                                                FixedColumnWidth(100.0),
                                            border: TableBorder.all(
                                              color: Colors.black,
                                              width: 1.0,
                                            ),
                                            children: [
                                              TableRow(
                                                decoration: BoxDecoration(
                                                  color: Color.fromARGB(
                                                      255, 96, 240, 96),
                                                ),
                                                children: [
                                                  TableCell(
                                                    child: Text(
                                                      ' Name',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  TableCell(
                                                    child: Text('Phone',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                  TableCell(
                                                    child: Text('Email',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                  TableCell(
                                                    child: Text('TypeOfUser',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                  TableCell(
                                                    child: Text('UserName',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                ],
                                              ),
                                              TableRow(
                                                children: [
                                                  TableCell(
                                                    child: Text('Cell 4'),
                                                  ),
                                                  TableCell(
                                                    child: Text('Cell 5'),
                                                  ),
                                                  TableCell(
                                                    child: Text('Cell 6'),
                                                  ),
                                                  TableCell(
                                                    child: Text('TypeOfUser'),
                                                  ),
                                                  TableCell(
                                                    child: Text('UserName'),
                                                  ),
                                                ],
                                              ),
                                              // ... Add more rows as needed
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ),
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
