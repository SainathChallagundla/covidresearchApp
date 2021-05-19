import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class IdentificatioDetails extends StatefulWidget {
  @override
  _IdentificatioDetailsState createState() => _IdentificatioDetailsState();
}

class _IdentificatioDetailsState extends State<IdentificatioDetails> {
  String name, iporop, ward, unit;
  num age, phoneNo;
  final _formKey = GlobalKey<FormState>();
  var nameController = new TextEditingController();
  var ageController = new TextEditingController();
  var iporopController = new TextEditingController();
  var wardController = new TextEditingController();
  var unitController = new TextEditingController();
  var phonenumController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(8),
                    child: inputBorderedTextFormField(
                      "Enter Patient Name",
                      TextInputType.phone,
                      nameController,
                    )),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: inputBorderedTextFormField(
                      "Enter Age",
                      TextInputType.text,
                      ageController,
                    )),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: new DropdownButton<String>(
                    focusColor: Colors.green[300],
                    items: <String>[
                      'male',
                      'female',
                      'do not disclose',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    hint: Text("Gender"),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: inputBorderedTextFormField(
                      "Enter IP/OP Number",
                      TextInputType.text,
                      iporopController,
                    )),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: inputBorderedTextFormField(
                      "Enter Ward",
                      TextInputType.multiline,
                      wardController,
                    )),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: inputBorderedTextFormField(
                      "Enter Unit",
                      TextInputType.multiline,
                      unitController,
                    )),
                Padding(
                    padding: EdgeInsets.all(8),
                    child: inputBorderedTextFormField(
                      "Enter Phone Number",
                      TextInputType.multiline,
                      phonenumController,
                    )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

Widget inputBorderedTextFormField(String hintText, TextInputType keyboardType,
    TextEditingController controller,
    [int minLines = 1, int maxLines = 1]) {
  return TextFormField(
    autocorrect: true,
    keyboardType: keyboardType,
    maxLines: maxLines,
    controller: controller,
    style: TextStyle(fontSize: 18),
    decoration: InputDecoration(
      isDense: true,
      labelText: hintText ?? "",
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.greenAccent, width: 1.0),
      ),
      contentPadding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 5.0),
    ),
    validator: (value) {
      if (value.isEmpty) {
        return hintText;
      }
      return null;
    },
    // onChanged: (value) {
    //   if (updateMap != null) {
    //     updateMap[mapKey] = value;
    //   }
    // },
  );
}
