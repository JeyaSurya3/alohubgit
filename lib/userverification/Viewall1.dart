import 'package:alohub/homepage.dart';
import 'package:alohub/userverification/jobdetails.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Viewall1 extends StatefulWidget {
  const Viewall1({super.key});

  @override
  State<Viewall1> createState() => _Viewall1State();
}

class _Viewall1State extends State<Viewall1> {
  List<String> Imagey = [
    "assets/images/alologo.png",
    "assets/images/alologo.png",
    "assets/images/alologo.png",
    "assets/images/alologo.png",
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
                maxCrossAxisExtent:400,
                childAspectRatio: 2/ 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15),
            itemCount: Imagey.length,
            itemBuilder: (context, index) {
              return InkWell(  onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Jobdetails()));},
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                              child: Text("Adobe Photoshop Adobe xp figma",
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
            }));
  }
}
