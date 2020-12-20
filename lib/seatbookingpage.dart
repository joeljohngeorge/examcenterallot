import 'package:flutter/material.dart';

class Seatbookingpage extends StatefulWidget {
  @override
  _SeatbookingpageState createState() => _SeatbookingpageState();
}

class _SeatbookingpageState extends State<Seatbookingpage> {
  var colleges = ['MACE', 'FISAT', 'MITS'];
  var _currentitemselected = 'MACE';
  final namecon=TextEditingController();
  final adnocon=TextEditingController();
  bool _validatename=false;
  bool _validateadno=false;
 
          
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              height: 1500,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                   
                      child: Column(children: [
                    TextFormField(
                      style: TextStyle(fontSize: 22),
                      decoration: const InputDecoration(
                          icon: const Icon(Icons.person),
                          labelText: ' Enter name',
                          labelStyle: TextStyle(fontSize: 16)),
                          controller:namecon,
                         
                    ),
                    SizedBox(height: 30),
                     TextFormField(
                      style: TextStyle(fontSize: 22),
                      decoration: const InputDecoration(
                          icon: const Icon(Icons.person),
                          labelText: ' Enter admission no.',
                          labelStyle: TextStyle(fontSize: 16)),
                          controller: adnocon,
                    ),
                    SizedBox(height: 30),
                    DropdownButton<String>(
                      items: colleges.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }).toList(),
                      onChanged: (String newValueSelected) {
                        _onDropDownItemSelected(newValueSelected);
                      },
                      value: _currentitemselected,
                    ),
                    SizedBox(height: 20),
                    RaisedButton(
                      child: new Text('Submit'),
                      onPressed: () {
                        if(namecon.text.isEmpty){
            _validatename=true;
          }
          else{
            _validatename=false;
          }
          if(adnocon.text.isEmpty){
            _validateadno=true;
          }
          else{
            _validateadno=false;
          }
          if(_validatename==false && _validateadno==false)
          {}
                      },
                    )
                  ]))))
        ],
      ),
    );
  }

  void _onDropDownItemSelected(String newValueSelected) {
    setState(() {
      this._currentitemselected = newValueSelected;
    });
  }
}
