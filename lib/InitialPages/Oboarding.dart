
import 'package:alohub/InitialPages/onboarding%20content.dart';
import 'package:alohub/userverification/login.dart';
import 'package:flutter/material.dart';

class Onnboarding extends StatefulWidget {
  const Onnboarding({super.key});

  @override
  State<Onnboarding> createState() => _OnnboardingState();
}

class _OnnboardingState extends State<Onnboarding> {
 int currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index; //  the current dot indicator
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) => Loginpage()));
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 40, right: 10),
                                  child: Text("Skip",
                                      style: TextStyle(fontSize: 13,color: Colors.black)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 350,
                          width: 460,
                          child: Image.asset(
                            contents[i].image,
                          ),
                        ),
                        Text(contents[i].title,
                            ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.2,
                          child: Text(contents[i].discription,
                              textAlign: TextAlign.center,
                              ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 40, left: 18, right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      children: contents.asMap().entries.map((entry) {
                    return GestureDetector(
                      child: Container(
                      width: currentIndex == entry.key ? 17 : 8,
                      height: 8.0,
                      margin: const EdgeInsets.symmetric(
                      horizontal: 6.0,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentIndex == entry.key
                              ? Colors.blue
                              : Color.fromARGB(68, 22, 72, 106)),
                    ));
                  }).toList()),
                  FloatingActionButton(
                    backgroundColor: Colors.blue,
                    onPressed: () {
                      if (currentIndex == contents.length - 1) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Loginpage()));
                      }
                      _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn,
                      );
                    },
                    shape: CircleBorder(), 
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      size: 30,
                      color: Colors.white,
                    ), 
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}