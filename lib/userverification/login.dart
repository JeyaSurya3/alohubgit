// ignore_for_file: must_be_immutable, unused_field

import 'package:alohub/homepage.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class Loginpage extends StatefulWidget {
  Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: Image.asset("assets/images/alologo.png"),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "welcome!",
              style: TextStyle(
                  fontFamily: 'poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0)),
            ),
            SizedBox(
                width: 300,
                child: Text(
                  "Lorem ipsum dolor sit amet,consectetur dipiscingelitAenean at Lorem ",
                  style: TextStyle(fontFamily: 'poppins'),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                )),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 370,
              child: TextFormField(
                validator: (value) {
                  if (emailcontroller.text.isEmpty) {
                    return "Emptyfield";
                  } else {
                    return null;
                  }
                },
                controller: emailcontroller,
                decoration: InputDecoration(
                    hintText: "Username",
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            SizedBox(
              height: 9,
            ),
            SizedBox(
              width: 370,
              child: TextFormField(
                validator: (value) {
                  if (passwordcontroller.text.isEmpty) {
                    return "Emptyfiled";
                  } else {
                    return null;
                  }
                },
                controller: passwordcontroller,
                decoration: InputDecoration(
                    counterText: "",
                    hintText: "password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),obscureText: true,
                keyboardType: TextInputType.number,
                maxLength: 10,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  } else {
                    print("Failure");
                  }
                },
                child: const Text("Login"),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Color.fromARGB(255, 52, 147, 206),
                    foregroundColor: Color.fromARGB(255, 231, 231, 250)),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
