import 'package:covidresearch/enterDetails/AssociatedFindings.dart';
import 'package:covidresearch/enterDetails/CovidStatus.dart';
import 'package:covidresearch/enterDetails/Distribution.dart';
import 'package:covidresearch/enterDetails/InvestigationDone.dart';
import 'package:covidresearch/enterDetails/clinicalFindings.dart';
import 'package:covidresearch/enterDetails/treatmentgiven.dart';
import 'package:flutter/material.dart';
import 'package:covidresearch/ViewDetails.dart';
import 'package:covidresearch/enterDetails/PatientIdentificationDetails.dart';
import 'package:covidresearch/enterDetails/Findings.dart';

class HomePage extends StatefulWidget {
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
  HomePage({
    Key key,
    this.title,
  }) : super(key: key);
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(widget.title),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Patient identification details'),
              Tab(text: 'COVID Status'),
              Tab(text: 'ClinicalFindings'),
              Tab(text: 'Investigations done'),
              Tab(text: 'Treatment Given'),
              Tab(text: 'Findings'),
              Tab(text: 'Associated Findings'),
              Tab(text: 'Distribution')
            ],
          ),
        ),
        body: TabBarView(
          children: [
            IdentificatioDetails(),
            CovidStatus(),
            ClinicalFIndings(),
            InvestigationDone(),
            TreatmetGiven(),
            Findings(),
            AssociatedFindin(),
            Distribution()
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Text("Submit"),
          backgroundColor: Colors.green,
          onPressed: () {},
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
        ),
      ),
    );
  }
}
