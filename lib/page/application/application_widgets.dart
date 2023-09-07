import 'package:flutter/material.dart';

Widget buildPage(int index) {
  final List pages = [
    Center(
      child: Text('Home'),
    ),
    Center(
      child: Text('Search'),
    ),
    Center(
      child: Text('Course'),
    ),
    Center(
      child: Text('Chat'),
    ),
    Center(
      child: Text('Profile'),
    )
  ];
  return pages[index];
}

List<BottomNavigationBarItem> bottomNavItems = [
  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
  BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
  BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: 'course'),
  BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'search'),
  BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'search')
];
