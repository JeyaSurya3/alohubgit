import 'package:alohub/HomeModule/LeaveDetails.dart';
import 'package:flutter/material.dart';

class Leaverequest extends StatefulWidget {
  const Leaverequest({super.key});

  @override
  State<Leaverequest> createState() => _LeaverequestState();
}

class _LeaverequestState extends State<Leaverequest> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController titleeditingcontroller = TextEditingController();
  TextEditingController startdatecontroller = TextEditingController();
  TextEditingController enddatedatecontroller = TextEditingController();
  TextEditingController reasoncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(automaticallyImplyLeading: true,
          centerTitle: true,
          title: Text(
            "Leave Request",
            style: TextStyle(
                fontFamily: 'poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
         
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Tittle",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  validator: (value) {
                    if (titleeditingcontroller.text.isEmpty) {
                      return "Empty field";
                    } else {
                      return null;
                    }
                  },
                  controller: titleeditingcontroller,
                  decoration: InputDecoration(
                      counterText: "",
                      hintText: "Lorem ipsum",
                      hintStyle: TextStyle(fontSize: 13, fontFamily: 'poppins'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3))),
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                ),
                Text(
                  "Start Date",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  validator: (value) {
                    if (startdatecontroller.text.isEmpty) {
                      return "Emptyfield";
                    } else {
                      return null;
                    }
                  },
                  controller: startdatecontroller,
                  decoration: InputDecoration(
                      counterText: "",
                      hintText: "24-10-2023",
                      suffixIcon: Icon(Icons.calendar_month_outlined),
                      hintStyle: TextStyle(fontSize: 13, fontFamily: 'poppins'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3))),
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                ),
                Text(
                  "End Date",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                TextFormField(
                  validator: (value) {
                    if (enddatedatecontroller.text.isEmpty)
                      return "Empty field";
                    else {
                      return null;
                    }
                  },
                  controller: enddatedatecontroller,
                  decoration: InputDecoration(
                      counterText: "",
                      hintText: "24-10-2023",
                      suffixIcon: Icon(Icons.calendar_month_outlined),
                      hintStyle: TextStyle(fontSize: 13, fontFamily: 'poppins'),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3))),
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                ),
                Text(
                  "Reason for leave",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'poppins',
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 0.5,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(3)),
                  height: 150,
                  child: TextFormField(
                    validator: (value) {
                      if (reasoncontroller.text.isEmpty) {
                        return "Empty field";
                      } else {
                        return null;
                      }
                    },
                    controller: reasoncontroller,
                    decoration: InputDecoration(
                        border: InputBorder.none, counterText: ""),
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Leavepage()));
                      } else {
                        print("Failure");
                      }
                    },
                    child: const Text("Save Request"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        backgroundColor: Color.fromARGB(255, 52, 147, 206),
                        foregroundColor: Color.fromARGB(255, 231, 231, 250)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
