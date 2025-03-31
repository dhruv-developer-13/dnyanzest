import 'package:dnyanzest/Screens/StudentScreens/AssignmentScreen/ListOfAssignmentsScreen.dart';
import 'package:flutter/material.dart';

class StudentNavigationScreen extends StatelessWidget {
  List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: "Home",
      backgroundColor: Colors.red,
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: "Home",
    ),
  ];

  int currentIndex = 1;
  List<Widget> pages = [
    SizedBox(),
    ListOfAssignmentsScreen(),
    SizedBox(),
    SizedBox(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavItems,
        currentIndex: currentIndex,
      ),
    );
  }
}
