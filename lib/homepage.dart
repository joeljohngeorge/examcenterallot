import 'package:examcenter_management_system/hallstatuspage.dart';
import 'package:examcenter_management_system/seatbookingpage.dart';
import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
            title: Center(
                child: Text("ExamCenter Details",
                    style: TextStyle(
                      fontSize: 20,
                    ))),
        bottom: TabBar(tabs: [
          Tab(child: Text('Hall status'),),
          Tab(child: Text('Seat booking'),)
        ],),  ),
        body: TabBarView(children: [
          Hallstatuspage(),
          Seatbookingpage(),
        ],),
      ),
    );
  }
}