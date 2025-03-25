import 'package:alohub/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter/widgets.dart';

class Coursedetail extends StatefulWidget {
  const Coursedetail({super.key});

  @override
  State<Coursedetail> createState() => _CoursedetailState();
}

class _CoursedetailState extends State<Coursedetail> {
  double value = 3.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 183,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    child: Image.asset(
                      "assets/images/Ulogo.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  height: 83,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      Text(
                        "UI/UX Design ",
                        style: TextStyle(
                            fontFamily: 'poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      RichText(
                          text: TextSpan(
                              text: "Duration of course:",
                              style: TextStyle(
                                  fontSize: 12, fontFamily: 'poppins'),
                              children: <TextSpan>[
                            TextSpan(
                                text: "3 Months",
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 52, 147, 206),
                                    fontSize: 12,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.bold))
                          ])),
                      RatingStars(
                        axis: Axis.horizontal,
                        value: value,
                        onValueChanged: (v) {
                          //
                          setState(() {
                            value = v;
                          });
                        },
                        starCount: 5,
                        starSize: 10,
                        valueLabelColor: const Color(0xff9b9b9b),
                        valueLabelTextStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0),
                        maxValue: 5,
                        starSpacing: 2,
                        maxValueVisibility: false,
                        valueLabelVisibility: false,
                        starOffColor: const Color(0xffe7e8ea),
                        starColor: Colors.yellow,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Course Details",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "Software Tools",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                            width: 600,
                            child: Text(
                                style: TextStyle(fontFamily: 'poppins'),
                                "Photoshop.Adobe Xd.Illustrator.figma.In Desig.Figjam")),
                        Text(
                          "Exclusive Support",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 200,
                          child: Text(
                            ".100% Job Asiistance .100% Portfolio Assistance . Visualization Techniques",
                            style: TextStyle(fontFamily: 'poppins'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                              fontFamily: 'poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                            "The course helps youto learn the art of making beautiful apps.We will help students explore key UXUI concepts and applictaions; front-end development that is essential to building good-looking and easy-to-use apps that are loved by users.  Our mission for the Our mission for the UX/UI Design Development Course is to equip our students with the knowledge, skills, and experience needed to ")
                      ],
                    ),
                    height: 250,
                    width: double.infinity,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
