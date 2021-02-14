import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_ui/widgets/home_tab.dart';
import 'package:pet_ui/widgets/search_tab.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeTab(),
    SearchTab(),
    Container(height: 300, width: 400, color: Colors.teal),
    Container(height: 300, width: 400, color: Colors.teal),
    Container(height: 300, width: 400, color: Colors.teal),
  ];
  void _changeIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(child: _children[_currentIndex]),
        bottomNavigationBar: false//Platform.isAndroid
            ? BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: _changeIndex,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home_outlined), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: "Search"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.book_outlined), label: "Articles"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.notifications_outlined),
                      label: "Notification"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_outline), label: "Profile"),
                ],
              )
            : CupertinoTabBar(
                currentIndex: _currentIndex,
                onTap: _changeIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.search), label: "Search"),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.book), label: "Articles"),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.bell), label: "Notification"),
                  BottomNavigationBarItem(
                      icon: Icon(CupertinoIcons.person), label: "Profile"),
                ],
              ));
  }
}
