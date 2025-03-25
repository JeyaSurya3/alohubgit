import 'package:alohub/userverification/jobdetails.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class Viewall2 extends StatefulWidget {
  const Viewall2({super.key});

  @override
  State<Viewall2> createState() => _Viewall2State();
}

class _Viewall2State extends State<Viewall2> {
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
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400,
              childAspectRatio: 5 / 3,
              crossAxisSpacing: 15,
              mainAxisSpacing: 15),
          itemCount: 4,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Jobdetails()));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Color.fromARGB(179, 239, 237, 237)),
                height: 60,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset(
                        Fewimages[index].toString(),
                        fit: BoxFit.cover,
                      ),
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
                      padding: const EdgeInsets.symmetric(horizontal: 5),
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
                              color: Color.fromARGB(255, 122, 122, 122),
                            )),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          "3 Months",
                          style: TextStyle(
                              fontSize: 8,
                              color: const Color.fromARGB(255, 122, 122, 122),
                              fontFamily: 'poppins'),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
