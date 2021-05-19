import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IdentificatioDetails extends StatefulWidget {
  @override
  _IdentificatioDetailsState createState() => _IdentificatioDetailsState();
}

class _IdentificatioDetailsState extends State<IdentificatioDetails> {
  String name, iporop, ward, unit;
  num age, phoneNo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: Card(
        elevation: 5,
        child: Wrap(
          children: <Widget>[
            new DropdownButton<String>(
              items: <String>[
                'Male',
                'Female',
                'D',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
              hint: Text("Select Gender"),
            ),
          ],
        ),
      ),
    ));
  }
}
