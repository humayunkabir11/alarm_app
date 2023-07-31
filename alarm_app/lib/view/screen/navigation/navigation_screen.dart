import 'package:alarm_app/view/screen/alarm_list/alarm_list_screen.dart';
import 'package:alarm_app/view/screen/home/home_screen.dart';
import 'package:alarm_app/view/screen/stopwatch/stopwatch_2n_screen.dart';
import 'package:alarm_app/view/screen/stopwatch/stopwatch_screen.dart';
import 'package:flutter/material.dart';

import '../settings/setting_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int currentIndex = 0;
  List <Widget> pages = [
    const HomeScreen(),
    const AlarmListScreen(),
    const StopWatchScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child:  pages[currentIndex],
      ),
      bottomNavigationBar:  BottomNavigationBar(

        currentIndex:  currentIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: const Color(0xff252118),
        selectedItemColor: const Color(0xff256BFD),
        items: const [
          BottomNavigationBarItem(
            label: "clock",
            icon: Icon(
              Icons.watch_later_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: "Alarm ",
            icon: Icon(Icons.alarm_add_outlined),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.watch), label: "Stop watch"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Setting"),
        ],
        onTap:  (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
