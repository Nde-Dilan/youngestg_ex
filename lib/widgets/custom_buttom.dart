import 'package:flutter/material.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: 'Home',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.school_outlined),
          activeIcon: Icon(Icons.school),
          label: 'Dskillroom',
        ),
        BottomNavigationBarItem(
          icon: Container(
            padding: const EdgeInsets.only(bottom: 28.0),
            child: const Icon(Icons.swap_horiz_outlined, size: 32),
          ),
          activeIcon: Container(
            padding: const EdgeInsets.only(bottom: 28.0),
            child: const Icon(Icons.swap_horiz, size: 32),
          ),
          label: 'Exchange',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.flight_takeoff_outlined),
          activeIcon: Icon(Icons.flight_takeoff),
          label: 'Flight',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.support_agent_outlined),
          activeIcon: Icon(Icons.support_agent),
          label: 'Support',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xFF00D1FF),
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
    );
  }
}
