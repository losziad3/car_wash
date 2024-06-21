import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:washit_project/widgets/Custombutton.dart';
import 'package:washit_project/widgets/buttonforlocationmanually.dart';
import 'package:washit_project/widgets/constant.dart';

class NotificationLocation extends StatelessWidget {
  const NotificationLocation({super.key});

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
              radius: screenWidth * 0.16, // Adjust radius based on screen width
              backgroundColor: Color(0xFFF6F6F6),
              child:SvgPicture.asset("svgs/notification-bing.svg")
            ),
            SizedBox(height: screenHeight * 0.05), // Adjust spacing based on screen height
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.08),
                child: Text(
                  "Enable Notification Access",
                  style: TextStyle(
                    fontSize: screenWidth * 0.06, // Adjust font size based on screen width
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight * 0.01),
                child: Text(
                  "Enable notifications to receive real-time updates.",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: screenWidth * 0.04, // Adjust font size based on screen width
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05), // Adjust spacing based on screen height
            Padding(
  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05), // Adjust the horizontal padding based on screen width
  child: Container(
    width: double.infinity,
    child: Custombutton(
      text: "Allow Notification",
      color: primarycolor,
      onTap: () {
        // Handle notification allowing action
      },
    ),
  ),
),

            SizedBox(height: screenHeight * 0.02), // Adjust spacing based on screen height
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), // Adjust padding based on screen width
              child: Custombuttonloc(
                colorLocation: Colors.white,
                text: "Maybe Later",
                color: Colors.white,
                onTap: () {
                  // Handle "Maybe Later" action
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
