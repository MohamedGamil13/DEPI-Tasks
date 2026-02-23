import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:simple_to_do_app/views/completed_notes_screen.dart';
import 'package:simple_to_do_app/views/pending_notes_screen.dart';
import 'package:simple_to_do_app/views/widgets/home_screen_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomeScreenBody(),
    const PendingNotesScreen(),
    const CompletedNotesScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        items: const <Widget>[
          Icon(Icons.checklist, size: 30),
          Icon(Icons.fact_check, size: 30),
          Icon(Icons.done_all, size: 30),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
      // BottomNavigationBarItem(icon: Icon(Icons.checklist), label: 'All'),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.fact_check),
      //       label: 'Pending',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.done_all),
      //       label: 'Completed',
      //     ),