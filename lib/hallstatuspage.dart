import 'package:flutter/material.dart';

class Hallstatuspage extends StatefulWidget {
  @override
  _HallstatuspageState createState() => _HallstatuspageState();
}

class _HallstatuspageState extends State<Hallstatuspage> {
  var maceseats=50;
  var fisatseats=50;
  var mitsseats=50;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 1500,
              width: MediaQuery.of(context).size.width,
              child: DataTable(columns: <DataColumn>[
                DataColumn(
                  label: Text(
                    'College name',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Seats available',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ], rows: <DataRow>[
                DataRow(cells: [
                  DataCell(Text('MACE')),
                  DataCell(Text(maceseats.toString())),
                ]),
                DataRow(cells: [
                  DataCell(Text('FISAT')),
                  DataCell(Text(fisatseats.toString())),
                ]),
                DataRow(cells: [
                  DataCell(Text('MITS')),
                  DataCell(Text(mitsseats.toString())),
                ]),
              ]))
        ],
      ),
    );
  }
}
