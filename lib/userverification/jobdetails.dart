import 'package:flutter/material.dart';

class Jobdetails extends StatefulWidget {
  const Jobdetails({super.key});

  @override
  State<Jobdetails> createState() => _JobdetailsState();
}

class _JobdetailsState extends State<Jobdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(onTap: () {
            
          },
            child: Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 27, 167, 192),
                  borderRadius: BorderRadius.circular(12)),
              width: 250,
              height: 50,
              child: Center(
                  child: Text(
                "APPLY NOW",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            ),
          ),
        ],
      ),
      appBar: AppBar(automaticallyImplyLeading: true,
         
        actions: [Icon(Icons.favorite)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/images/aloinfo.png"),
            ),
            Text(
              "UI/UX Designer ",
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "Alo info-tech Pvt.Ltd",
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                  color: Color.fromARGB(255, 36, 21, 24)),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              "Nagercoil",
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 9.6,
                  color: Color.fromARGB(255, 36, 21, 24)),
            ),
            Container(
              height: 192,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Requirements ",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      "Exceptional with communication skills and team working skill. ",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(
                            255,
                            23,
                            23,
                            22,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      "Formulate good design ideas and propose solutions to increased product.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(
                            255,
                            23,
                            23,
                            22,
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 300,
                    child: Text(
                      "You have at least 3 years of experience in a similar role",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(
                            255,
                            23,
                            23,
                            22,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Skill Needed",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    "Design Thinking . Problem Solving .UX Design ",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(
                          255,
                          23,
                          23,
                          22,
                        )),
                  ),
                ],
              ),
            ),
            Container(
                height: 231,
                width: double.infinity,
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Job description",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      width: 350,
                      child: Text(
                        "Can you bring creative human-centered ideas to the norme ideas of  life and make great things happen beyond what means the eye? We believe in teamwork,fun,complex,projects,diverse perspectives and simple solution for like and unlike solution of the team work of thew like ",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(
                              255,
                              23,
                              23,
                              22,
                            )),
                      ),
                    ),
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
