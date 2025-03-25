import 'package:alohub/const.dart';
import 'package:alohub/homepage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/icon_map.dart';

class Notes extends StatefulWidget {
  const Notes({super.key});

  @override
  State<Notes> createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<String> Letters = [
    "UI/UX Designer",
    "Front-end Developer",
    "Java Developer",
    "UI/UI Designer"
  ];
  List<String> Aloimages = [
    "assets/images/Design.png",
    "assets/images/Design.png",
    "assets/images/Design.png",
    "assets/images/Design.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "Notes",
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        body: ListView.builder(
            itemCount: Aloimages.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 192,
                    width: 400,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 192,
                          child: Image.asset(
                            Aloimages[index].toString(),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "UI/UX Design",
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromARGB(255, 52, 147, 206)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "UI DESIGN ADVANCED",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "lorem ipsum dolor sit amet consectetur. Euismod pellentesque aliquam est vitae pretium. Id nisl diam f     ",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10,
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 20,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Bluestatic.kDarkBlueColor,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Download Pdf",
                                      style: TextStyle(
                                          fontFamily: 'poppins',
                                          fontSize: 7,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.download,
                                      size: 8,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ));
            }));
  }
}
