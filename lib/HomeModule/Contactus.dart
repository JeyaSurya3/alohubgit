import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Contactus extends StatefulWidget {
  const Contactus({super.key});

  @override
  State<Contactus> createState() => _ContactusState();
}

class _ContactusState extends State<Contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Contact Us",
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 30),
        child: Column(
          children: [
            Container(
                height: 200,
                width: double.infinity,
                color: Color.fromARGB(255, 253, 251, 241),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.location_on,size: 14,
                          color: Color.fromARGB(255, 27, 157, 186),
                        ),SizedBox(width: 5,), 
                        SizedBox(
                            width: 200,
                            child: Text(
                              "Chettikulam junction,Hindu college Rd,Chettikulam,chenthooran Nager,Nagercoil,TamilNadu 629001",
                              style: TextStyle(fontSize: 12),
                            )),
                      ],
                    ), SizedBox(height: 10,),
           
            Row(
              children: [
                Icon(
                  Icons.call,size: 14,
                  color: Color.fromARGB(255, 16, 145, 173),
                ),SizedBox(width: 5,),  Text("+91 98327651",style: TextStyle(fontSize: 12),),
              ],
            ), SizedBox(height: 10,), Row(
              children: [
                Icon(
                  Icons.web,size: 14,
                  color: Color.fromARGB(255, 24, 130, 153),
                ), SizedBox(width: 5,), Text("wwww.aloinfotech.com",style: TextStyle(fontSize: 12),),
              ],
            ),SizedBox(height: 10,), Row(
              children: [
                Icon(
                  Icons.message,size: 14,
                  color: Color.fromARGB(255, 38, 149, 174),
                ),SizedBox(width: 5,), Text("aloinfotech@gmail.com",style: TextStyle(fontSize:12 ),),
              ],
            )
           
           
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
