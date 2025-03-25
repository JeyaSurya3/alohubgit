import 'package:alohub/homepage.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<String> Letters = [
    "UI/UX Designer",
    "Front-end Developer",
    "Java Developer",
    "UI/UI Designer"
  ];
  List<String> Aloimages = [
    "assets/images/aloinfo.png",
    "assets/images/aloinfo.png",
    "assets/images/aloinfo.png",
    "assets/images/aloinfo.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(  leading: InkWell(
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
            "Favorite",
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
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 0.5,
                                    color: Color.fromARGB(255, 218, 212, 212),
                                  ),
                                  shape: BoxShape.circle),
                              child: Container(
                                child: ClipRRect(
                                  child:
                                      Image.asset(Aloimages[index].toString()),
                                ),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Letters[index].toString(),
                                style: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              SizedBox(width: 200,
                                child: Text(
                                  "at Alo Info-Tech Pvt.Ltd Nagercoil 629001",textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Skills:",
                                    style: TextStyle(
                                        
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black),
                                  ), Text(
                                    " Adobe photoshop Adobe lightroom",
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Icon(Icons.favorite,color: Colors.blue,)
                        ],
                      ),
                    ),
                  ));
            }));
  }
}
