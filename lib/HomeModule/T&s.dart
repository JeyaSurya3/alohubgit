import 'package:flutter/material.dart';

class Termcondition extends StatefulWidget {
  const Termcondition({super.key});

  @override
  State<Termcondition> createState() => _TermconditionState();
}

class _TermconditionState extends State<Termcondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          "Terms & Condition",
          style: TextStyle(
              fontFamily: 'poppins',
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lorem ipsum dolor site amet consecter ",
              style: TextStyle(
                  fontFamily: 'poppins,',
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(textAlign: TextAlign.start,
                "Lorem ipsum dolor sit amet consectetur. Lacus faucibus diam commodo velit dignissim urna at aliquam. Neque est at eu dictum mauris neque. Eleifend sagittis mattis amet ultrices nunc ut ac gravida proin. Adipiscing dui eu accumsan cursus tincidunt urna nunc diam. Eu a sagittis molestie erat tincidunt a montes. Mauris potenti in quis pharetra in. Proin a leo feugiat aliquet.Venenatis cursus tempus mi commodo pellentesque sollicitudin risus sed mauris. Ornare elementum velit potenti lorem semper ac mattis facilisi. Id ultricies gravida convallis enim vestibulum ac euismod cursus. Vel proin id metus vel feugiat. Quam ipsum sit fames risus eu netus mattis. Tempor ullamcorper suscipit at ultrices congue dignissim vitae vitae. Elementum est posuere sit eget mus condimentum. Purus et nam ridiculus urna sed. ",style: TextStyle(color: Color.fromARGB(255, 124, 114, 114),fontFamily: 'poppins',fontSize: 13),)
           ,SizedBox(height: 20,),
            Text(
              "Lorem ipsum dolor site amet consecter ",
              style: TextStyle(
                  fontFamily: 'poppins,',
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(textAlign: TextAlign.start,
                "Lorem ipsum dolor sit amet consectetur. Lacus faucibus diam commodo velit dignissim urna at aliquam. Neque est at eu dictum mauris neque. Eleifend sagittis mattis amet ultrices nunc ut ac gravida proin. Adipiscing dui eu accumsan cursus tincidunt urna nunc diam. Eu a sagittis molestie erat tincidunt a montes. Mauris potenti in quis pharetra in. Proin a leo feugiat aliquet.Venenatis cursus tempus mi commodo pellentesque sollicitudin risus sed mauris. Ornare elementum velit potenti lorem semper ac mattis facilisi. Id ultricies gravida convallis enim vestibulum ac euismod cursus. Vel proin id metus vel feugiat. Quam ipsum sit fames risus eu netus mattis. Tempor ullamcorper suscipit at ultrices congue dignissim vitae vitae. Elementum est posuere sit eget mus condimentum. Purus et nam ridiculus urna sed. ",style: TextStyle(color: Color.fromARGB(255, 124, 114, 114),fontFamily: 'poppins',fontSize: 13),)],
        ),
      ),
    );
  }
}
