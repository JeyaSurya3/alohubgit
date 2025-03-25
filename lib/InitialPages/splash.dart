import 'dart:async';

import 'package:alohub/InitialPages/Oboarding.dart';
import 'package:flutter/material.dart';

import 'Onboarding.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Onnboarding()));
    });
  }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 500,
              width: 500,
              child: Image.asset("assets/images/alologo.png"),
            )
          ],
        ),
      ),
    );
  }
}
