import 'package:flutter/material.dart';
import 'package:volvoPedia/Views/models.dart';
import 'package:volvoPedia/main.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  final List<Widget> _children = [FirstScreen(), SecondScreen(), Models()];

  String name = 'Yes';

  String CreateTitle() {
    return "The name is " + this.name;
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        fixedColor: Colors.white,
        backgroundColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('Home')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.map), title: new Text('Map')),
          BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('Account'))
        ],
      ),
    );
  }
}
