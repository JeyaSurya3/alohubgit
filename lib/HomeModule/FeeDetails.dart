import 'package:flutter/material.dart';

class FeeDetails extends StatefulWidget {
  const FeeDetails({super.key});

  @override
  State<FeeDetails> createState() => _FeeDetailsState();
}

class _FeeDetailsState extends State<FeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Fee Details",
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
       
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 52, 147, 206),
                  borderRadius: BorderRadius.circular(18)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Total Fee",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            Row(
                              children: [
                                Text(
                                  "₹20,000",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Row(children: [
                          Container(
                            height: 70,
                            width: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        "Total Fee",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                      Text(
                                        "3",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 2,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Paid",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Balance : ₹7,0000",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                    Text(
                      "Next Due on : 24-10-2023",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Paid Due's",
                    style: TextStyle(
                        fontFamily: 'poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 400,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 400,
                        childAspectRatio: 2 / 1,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20),
                    itemCount: 2,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 252, 251, 249),
                              borderRadius: BorderRadius.circular(15)),
                          child: 
                            
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Friday 20, October 2023",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ), Text(
                                          "Due no : 1",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),), Text(
                                          "₹ 6000",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 20,fontWeight: FontWeight.bold
                                          ),)
                                  ],
                                ),
                              ),
                  );
                  }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
