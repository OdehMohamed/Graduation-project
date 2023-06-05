import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Example'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Table(
          defaultColumnWidth: FixedColumnWidth(100.0),
          border: TableBorder.all(
            color: Colors.black,
            width: 1.0,
          ),
          children: [
            TableRow(
              children: [
                TableCell(
                  child: ListTile(
                    title: Text('Menu Item'),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return Dialog(
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              child: Table(
                                defaultColumnWidth: FixedColumnWidth(100.0),
                                border: TableBorder.all(
                                  color: Colors.black,
                                  width: 1.0,
                                ),
                                children: [
                                  TableRow(
                                    children: [
                                      TableCell(
                                        child: Text('Cell 1'),
                                      ),
                                      TableCell(
                                        child: Text('Cell 2'),
                                      ),
                                      TableCell(
                                        child: Text('Cell 3'),
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
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
