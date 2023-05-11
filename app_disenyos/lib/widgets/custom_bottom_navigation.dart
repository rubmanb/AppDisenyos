import 'package:flutter/material.dart';

class CustomBottomNavigator extends StatelessWidget {
  const CustomBottomNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.pink,
      unselectedItemColor: Colors.blue[900],
      showUnselectedLabels: false,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.calendar_month_rounded,
            size: 25,
          ),
          label: 'Calendar',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_rounded, size: 25),
          label: 'Graphics',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people, size: 25),
          label: 'Users',
        ),
      ],
    );
  }
}
