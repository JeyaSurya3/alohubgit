import 'package:flutter/material.dart';

class Notificationnnn extends StatefulWidget {
  const Notificationnnn({super.key});

  @override
  State<Notificationnnn> createState() => _NotificationnnnState();
}

class _NotificationnnnState extends State<Notificationnnn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( centerTitle: true,
         title: Text(
           "Notification",
           style: TextStyle(
               fontFamily: 'poppins',
               fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.black),
         ),
       
      ),
    );
  }
}
