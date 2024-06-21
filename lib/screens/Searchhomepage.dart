import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:washit_project/widgets/constant.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar:AppBar(
  title: Container(
    height: screenHeight * 0.2, // Adjust the height of the container
    decoration: BoxDecoration(
      color: Color(0xFFF6F6F6),
      borderRadius: BorderRadius.circular(screenWidth * 0.4), // Adjusted border radius
    ),
    child: Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.02),
          child: SvgPicture.asset("svgs/Search.svg"),
        ),
        SizedBox(width: screenWidth * 0.02),
        Text(
          "Search...",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Color(0xFF797979),
          ),
        ),
        Spacer(),
        SvgPicture.asset("svgs/close-circle.svg"),
      ],
    ),
  ),
),

      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenWidth * 0.05, // Adjust left padding
          screenHeight * 0.05, // Adjust top padding
          screenWidth * 0.05, // Adjust right padding
          0, // No bottom padding
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recent Search",
              style: TextStyle(
                fontSize: screenHeight * 0.025, // Adjust font size
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenHeight * 0.015),
            Row(
              children: [
                Text(
                  "PristinePulse Car Spa",
                  style: TextStyle(
                    color: Color(0xFF797979),
                    fontSize: screenHeight * 0.02, // Adjust font size
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(flex: 1),
              SvgPicture.asset("svgs/add.svg")
              ],
            ),
            SizedBox(height: screenHeight * 0.015),
            Row(
              children: [
                // Adjust spacing
                Text(
                  "Crystal Car Care",
                  style: TextStyle(
                    color: Color(0xFF797979),
                    fontSize: screenHeight * 0.02, // Adjust font size
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(flex: 1,),
                SvgPicture.asset("svgs/add.svg")
              ],
            ),
            SizedBox(height: screenHeight * 0.015),
            Row(
              children: [
                Text(
                  "Aqua Car Spa",
                  style: TextStyle(
                    color: Color(0xFF797979),
                    fontSize: screenHeight * 0.02, // Adjust font size
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(flex: 1),
                SvgPicture.asset("svgs/add.svg")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
