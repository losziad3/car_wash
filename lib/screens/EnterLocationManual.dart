import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:washit_project/widgets/constant.dart';

class EnterLocationManual extends StatelessWidget {
  const EnterLocationManual({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieve screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Enter Your Location",
          style: TextStyle(
            color: Color(0xFF242424),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: screenHeight * 0.03, // Top padding based on screen height
          left: screenWidth * 0.05, // Left padding based on screen width
          right: screenWidth * 0.03, // Right padding based on screen width
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: Color(0xFFF6F6F6),
              ),
              child: Row(
                children: [
                  SvgPicture.asset("svgs/searchframe.svg"),
                  SizedBox(width: screenWidth * 0.02), // SizedBox adjusted based on screen width
                  Text("Golden Avenue",style: TextStyle(
                  color: Colors.grey,
                  ),),
                  Spacer(flex: 1,),
                 SvgPicture.asset("svgs/close-circle.svg"),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // SizedBox adjusted based on screen height
            Row(
              children: [
               SvgPicture.asset("svgs/direct-up.svg"),
                SizedBox(width: screenWidth * 0.02), // SizedBox adjusted based on screen width
                Text("Use my current location"),
              ],
            ),
            SizedBox(height: screenHeight * 0.01), // SizedBox adjusted based on screen height
            Divider(
              color: Colors.grey,
              endIndent: screenWidth * 0.03, // endIndent adjusted based on screen width
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.01), // Padding adjusted based on screen width
                child: Text(
                  "SEARCH RESULT",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01), // SizedBox adjusted based on screen height
            Row(
              children: [
               SvgPicture.asset("svgs/smalldirect-up.svg"),
                SizedBox(width: screenWidth * 0.02), // SizedBox adjusted based on screen width
                Text("Golden Avenue"),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "8502 Preston Rd. Ingl..",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
