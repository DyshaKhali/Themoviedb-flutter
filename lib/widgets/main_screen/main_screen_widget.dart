// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors,prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text("News"),
    Text("Movies"),
    Text("Serials"),
  ];

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TMDB'),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions[_selectedTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "News",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: "Movies",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: "Serials",
          ),
        ],
        onTap: onSelectedTab,
      ),
    );
  }
}
