import 'package:alohub/HomeModule/LeaveDetails.dart';
import 'package:alohub/HomeModule/Leaverequest.dart';
import 'package:alohub/homepage.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../userverification/Home.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});

  @override
  State<Attendance> createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  List<Widget> Logout = [Icon(Icons.logout)];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SliderButton(
            backgroundColor: Colors.blue,
            baseColor: Colors.blue,
            action: () async {
              ///Do something here OnSlide
              return true;
            },
            buttonSize: 40,
            buttonWidth: 100,
            height: 50,
            label: Text(
              "Swipe to check in ",
              style: TextStyle(
                  fontFamily: 'poppins',
                  color: Color.fromARGB(255, 244, 240, 240),
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            icon: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Attendance",
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Monday 24",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              Row(
                children: [
                  Text(
                    "October 2023",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>Leavepage ()));
                    },
                    child: Icon(
                      Icons.assignment_add,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 180,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.blue),
                  color: Color.fromARGB(255, 252, 251, 249),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.login,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Check in",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "00 : 00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 180,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.blue),
                  color: Color.fromARGB(255, 252, 251, 249),
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.login,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Check Out",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "00 : 00",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your activity",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    height: 70,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 247, 242, 242),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Friday 20,\nOctober 2023",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            width: 230,
                          ),
                          Column(
                            children: [
                              Text(
                                "Check In",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "10 : 00",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  color: Colors.blue,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              Text(
                                "Check Out",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontFamily: 'poppins',
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                              Text(
                                "12 : 00",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ));
            },
          ),
        )
      ]),
    );
  }
}
