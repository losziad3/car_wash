import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:car_wash/screens/EnterLocationManual.dart';
import 'package:car_wash/screens/NotifcationLocation.dart';
import 'package:car_wash/widgets/Custombutton.dart';
import 'package:car_wash/widgets/buttonforlocationmanually.dart';
import 'package:car_wash/widgets/constant.dart';

class Locationpage extends StatelessWidget {
  
  const Locationpage({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtain the screen size using MediaQuery
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.2), // Adjust top padding based on screen height
        child: Column(
          children: [
            CircleAvatar(
              radius: screenWidth * 0.13, // Adjust radius based on screen width
              backgroundColor: Color(0xFFF6F6F6),
              child: SvgPicture.asset("svgs/loginlocation.svg")
            ),
            SizedBox(height: screenHeight * 0.05), // Adjust spacing based on screen height
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.04),
                child: Text(
                  "What is Your Location?",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06, // Adjust font size based on screen width
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.04, top: screenHeight * 0.01),
                child: Text(
                  "To Find Nearby Service Provider.",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: screenWidth * 0.04, // Adjust font size based on screen width
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05), // Adjust spacing based on screen height
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Container(
                width: double.infinity,
                child: Custombutton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return NotificationLocation();
                    }));
                  },
                  text: "Allow Location Access",
                  color: primarycolor,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // Adjust spacing based on screen height
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Adjust padding based on screen width
              child: Custombuttonloc(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return EnterLocationManual();
                  }));
                },
                colorLocation: primarycolor,
                text: "Enter Location Manually",
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
