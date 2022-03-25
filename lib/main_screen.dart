import 'package:flutter/material.dart';
import 'package:pengadaanbarang/dashboard.dart';
import 'package:pengadaanbarang/menu.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:pengadaanbarang/profile.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    dashboard(),
    menu(),
    profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 241, 241, 241),
        items: <Widget>[
          Icon(Icons.home, size: 25),
          Icon(Icons.assignment, size: 25),
          Icon(Icons.person, size: 25),
        ],
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
    );
  }
}
