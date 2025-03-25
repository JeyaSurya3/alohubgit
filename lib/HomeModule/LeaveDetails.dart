import 'package:alohub/HomeModule/Leaverequest.dart';
import 'package:alohub/const.dart';
import 'package:flutter/material.dart';

class Leavepage extends StatefulWidget {
  String? titlevalue;
  String? startdate;

  Leavepage({super.key, this.titlevalue,this.startdate});

  @override
  State<Leavepage> createState() => _LeavepageState();
}

List<String> Icoon = [
  "assets/images/time1.png",
  "assets/images/time3.png",
  "assets/images/time4.png",
];

List<String> Hoiii = [
  "Lorem ipsum",
  "Lorem ipsum",
  "Lorem ipsum",
];

class _LeavepageState extends State<Leavepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Leave Details",
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Leaverequest()));
                  },
                  child: Text(
                    "+ Leave Request",
                    style: TextStyle(
                        color: Bluestatic.kDarkBlueColor,
                        fontFamily: 'poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
                itemCount: Hoiii.length,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                  widget.titlevalue.toString(),
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  SizedBox(
                                    width: 400,
                                    child: Text(
                                      "loream iposum and the con set diquan and the of the agdjlj0dqe w eqiuhbhebfrh hey and you are my everthing and you are myband the first and last of the ",
                                      style: TextStyle(
                                          fontFamily: 'poppins',
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    widget.titlevalue.toString(),
                                    style: TextStyle(
                                        color: Bluestatic.kDarkBlueColor,
                                        fontFamily: 'poppins',
                                        fontSize: 9,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Monday",
                                    style: TextStyle(
                                        color: Bluestatic.kDarkBlueColor,
                                        fontFamily: 'poppins',
                                        fontSize: 7,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Image.asset(Icoon[index].toString()),
                            ],
                          ),
                        ),
                      ));
                }),
          )
        ],
      ),
    );
  }
}
