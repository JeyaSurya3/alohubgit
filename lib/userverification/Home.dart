import 'package:alohub/const.dart';
import 'package:alohub/userverification/Coursedetail.dart';
import 'package:alohub/userverification/Viewall1.dart';
import 'package:alohub/userverification/jobdetails.dart';
import 'package:alohub/userverification/viewall2.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import '../HomeModule/Notifaction.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  List<String> Banner = [
    "assets/images/Frame.png",
    "assets/images/alologo.png",
    "assets/images/alologo.png",
    "assets/images/alologo.png",
  ];

  List<String> Popular = [
    "UI/UX Design",
    "Graphic Design",
    "UI/UX Design",
    "Graphic Design",
  ];

  List<String> Fewimages = [
    "assets/images/1.png",
    "assets/images/2.png",
    "assets/images/1.png",
    "assets/images/2.png",
  ];
  List<String> Imagey = [
    "assets/images/alologo.png",
    "assets/images/alologo.png",
    "assets/images/alologo.png",
    "assets/images/alologo.png",
  ];
  List<Widget> Bottombar = [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.menu_book),
    Icon(Icons.favorite),
    Icon(Icons.favorite),
  ];
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 52, 147, 206),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40))),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 35),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Column(
                        children: [
                          Text(
                            "welcome!",
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
                          Text(
                            "Lorem Ipsum",
                            style: TextStyle(
                                fontFamily: 'poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Color.fromARGB(255, 238, 232, 232)),
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Notificationnnn()));
                          },
                          child: Icon(
                            MdiIcons.bellBadge,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                CarouselSlider(
                  items: Banner.map((e) {
                    return Container(
                      decoration: const BoxDecoration(),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: Image.asset(e)),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    autoPlay: true,
                    autoPlayAnimationDuration: const Duration(seconds: 1),
                    height: 120,
                  ),
                ),
                DotsIndicator(
                  dotsCount: Banner.length,
                  position: currentIndex.toDouble(),
                )
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Current Openings",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Viewall1()));
                          },
                          child: Text(
                            "view all",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 210,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Imagey.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Jobdetails()));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 43, 151, 187)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    height: 50,
                                    width: 50,
                                    child: Image.asset(
                                      Imagey[index].toString(),
                                    ),
                                  ),
                                  Icon(
                                    MdiIcons.heart,
                                    color: Colors.white,
                                    size: 18,
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "UI/UX Designer ",
                                        style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(
                                          width: 100,
                                          child: Column(
                                            children: [
                                              Text(
                                                "at ALO Info-Tech Pvt.Ltd Nagercoil-629001",
                                                style: TextStyle(
                                                    fontSize: 8,
                                                    color: Colors.white,
                                                    fontFamily: 'poppins'),
                                                textAlign: TextAlign.start,
                                              ),
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Skills ",
                                        style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 10,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 85,
                                    child: Text(
                                        "Adobe Photoshop Adobe xp figma",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            overflow: TextOverflow.clip,
                                            fontSize: 8,
                                            fontFamily: 'poppins',
                                            color: Colors.white)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        width: MediaQuery.of(context).size.width / 4,
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            child: Column(
              children: [
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Courses",
                      style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Viewall2()));
                      },
                      child: Text(
                        "view all",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 140,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Fewimages.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Coursedetail()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18),
                                color: Color.fromARGB(179, 239, 237, 237)),
                            height: 60,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child:
                                      Image.asset(Fewimages[index].toString()),
                                  decoration: BoxDecoration(),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(Popular[index].toString(),
                                        style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text("....")
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: Text("Photoshop,illustrator,Figma",
                                      style: TextStyle(
                                          fontFamily: 'poppins',
                                          fontSize: 6,
                                          color: Color.fromARGB(
                                            255,
                                            122,
                                            122,
                                            122,
                                          ))),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                DottedLine(
                                  lineLength: 135,
                                  dashLength: 0.5,
                                  dashColor: Color.fromARGB(255, 122, 122, 122),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        height: 5,
                                        width: 5,
                                        child: Icon(
                                          Icons.timer,
                                          size: 5,
                                          color: Color.fromARGB(
                                              255, 122, 122, 122),
                                        )),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      "3 Months",
                                      style: TextStyle(
                                          fontSize: 8,
                                          color: const Color.fromARGB(
                                              255, 122, 122, 122),
                                          fontFamily: 'poppins'),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
