import 'package:flutter/material.dart';
import 'package:ulearning_app/page/home/home_screen.dart';

Widget buildPage(int index) {
  final List pages = [
    Center(
      child: HomeScreen(),
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
  BottomNavigationBarItem(
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset('assets/icons/home.png'),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          'assets/icons/home.png',
          color: Colors.deepPurple,
        ),
      ),
      label: 'home'),
  BottomNavigationBarItem(
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset('assets/icons/search.png'),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          'assets/icons/search.png',
          color: Colors.deepPurple,
        ),
      ),
      label: 'search'),
  BottomNavigationBarItem(
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset('assets/icons/play.png'),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          'assets/icons/play.png',
          color: Colors.deepPurple,
        ),
      ),
      label: 'course'),
  BottomNavigationBarItem(
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset('assets/icons/chat.png'),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          'assets/icons/chat.png',
          color: Colors.deepPurple,
        ),
      ),
      label: 'chat'),
  BottomNavigationBarItem(
      icon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset('assets/icons/user.png'),
      ),
      activeIcon: SizedBox(
        width: 15,
        height: 15,
        child: Image.asset(
          'assets/icons/user.png',
          color: Colors.deepPurple,
        ),
      ),
      label: 'user'),
];
