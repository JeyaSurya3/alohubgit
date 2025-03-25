import 'package:flutter/material.dart';

import 'HomeModule/Attendance.dart';
import 'HomeModule/Favorite.dart';
import 'HomeModule/Note.dart';
import 'HomeModule/Profile.dart';
import 'const.dart';
import 'userverification/Home.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
       final apps = [
      Homepage(),
      Attendance(),
      Profile(),
      Notes(),
      Favorite(),
    ];
    return Scaffold(
      bottomNavigationBar: Container(
        color: Bluestatic.kDarkBlueColor,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Bluestatic.kDarkBlueColor,
              icon: Icon(Icons.home,
                  color: index == 0 ? Colors.grey : Colors.white),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark,
                  color: index == 2 ? Colors.grey : Colors.white),
              label: 'Attendance',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined, color: index == 3 ? Colors.grey : Colors.white),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notes_outlined,color: index == 4 ? Colors.grey : Colors.white),
              label: 'Notes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border_outlined,color: index == 5 ? Colors.grey : Colors.white),
              label: 'Favourite',
            ),
          ],
          currentIndex: index,
          selectedItemColor: Colors.white,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
        ),
      ),
      body: apps[index],
    );
  }
}
