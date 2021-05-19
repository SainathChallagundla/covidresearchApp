import 'package:flutter/material.dart';

class CovidStatus extends StatefulWidget {
  @override
  _CovidStatusState createState() => _CovidStatusState();
}

class _CovidStatusState extends State<CovidStatus> {
  bool _yes = false;
  bool _no = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:
              Column(children: <Widget>[_getCheckedBox(_yes, _no, "RT PCR")])),
    );
  }

  Widget _getCheckedBox(bool yes, bool no, String title) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        Text(
          '$title: ',
          style: TextStyle(fontSize: 17.0),
        ),
        Checkbox(
          checkColor: Colors.greenAccent,
          activeColor: Colors.red,
          value: no,
          onChanged: (value) {
            setState(() {
              no = value;
            });
          },
        ),
        Checkbox(
          value: yes,
          onChanged: (bool value) {
            setState(() {
              yes = value;
            });
          },
        ),
      ],
    );
  }
}
