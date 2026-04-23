import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(MyApp());
}

// Root widget that sets up the app theme and initial screen
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DORADO_ASSIGNMENT_6',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.blue.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade700,
          foregroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.blue.shade700,
          unselectedItemColor: Colors.blue.shade300,
        ),
      ),
      home: MainNavigation(),
    );
  }
}

// Stateful widget that manages bottom navigation between screens
class MainNavigation extends StatefulWidget {
  @override
  _MainNavigationState createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  // Stores the currently selected tab index
  int _selectedIndex = 0;

  // List of screens displayed in the app
  final List<Widget> _screens = [
    HomeScreen(),
    ProfileScreen(),
  ];

  // Method: updates selected index when a navigation item is tapped
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Builds the layout with bottom navigation
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}