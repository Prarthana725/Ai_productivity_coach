import 'package:flutter/material.dart';
import 'home_page.dart';
import 'tasks_screen.dart';
import 'focus_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int currentIndex = 0;

  final List pages = [
    const HomePage(),
    const TasksScreen(),
    const FocusScreen(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [

          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"),

          BottomNavigationBarItem(
              icon: Icon(Icons.check),
              label: "Tasks"),

          BottomNavigationBarItem(
              icon: Icon(Icons.timer),
              label: "Focus"),

        ],
      ),
    );
  }
}