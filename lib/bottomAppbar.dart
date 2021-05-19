import 'package:flutter/material.dart';
import 'package:covidresearch/ViewDetails.dart';
import 'package:covidresearch/homepage.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    _children = [
      ViewDetails(),
      HomePage(
        title: "covidResearch",
      )
    ];
    return Scaffold(
        body: Container(child: _children[_currentIndex]),
        bottomNavigationBar: getBottomNavigationBar());
  }

  Widget getBottomNavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      unselectedLabelStyle:
          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      backgroundColor: Colors.green[300],
      onTap: onTabTapped, // new
      currentIndex: _currentIndex, // new
      items: [
        new BottomNavigationBarItem(
          icon: Icon(Icons.view_comfortable),
          label: 'ViewDetails',
        ),
        new BottomNavigationBarItem(
            icon: Icon(Icons.edit), label: 'Enter New Details'),
      ],
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
