import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:washit_project/widgets/constant.dart';

class ServiceContainer extends StatelessWidget {
  const ServiceContainer({super.key});

  @override
  Widget build(BuildContext context) {
     final double screenWidth = MediaQuery.of(context).size.width;
     

    // Calculate dynamic width as a fraction of the screen width
    double dynamicWidth = screenWidth * 0.01; // 1% of screen width


    return Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
Container(
  width: MediaQuery.of(context).size.width * 0.6, // Adjusted width based on screen width
  height: MediaQuery.of(context).size.height * 0.18, // Adjusted height based on screen height
  decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(16),
    topRight: Radius.circular(16),
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
),

    border: Border.all(
      color: const Color(0xFFF1F9FB),
    ),
    image: DecorationImage(
      
      image: AssetImage(

        "svgs/carservice.png",
      ),
      fit: BoxFit.cover, // Ensure the image covers the container
    ),
  ),
  child: Stack(
    children: [
      // Small container at the top left corner for the star icon and text
      Positioned(
        top: 6.0, // Adjust top position as needed
        left: 6.0, // Adjust left position as needed
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0), // Add padding to the small container
          decoration: BoxDecoration(
            color: Colors.white, // Dark background with some transparency
            borderRadius: BorderRadius.circular(4), // Small rounded corners
          ),
          child: Row(
            children: [
              // Star icon
             SvgPicture.asset("svgs/Starr.svg"),
              // Spacer to separate the icon and text
            SizedBox(
            width: dynamicWidth,
          ),
              // Text for the rating
              Text(
                '4.8',
                style: TextStyle(
                  color: Colors.black, // White color for the text
                  fontSize: 14, // Adjust font size as needed
                  // Make the text bold
                ),
              ),
            ],
          ),
        ),
      ),
      // Small container at the top right corner for the save icon
      Positioned(
        top: 7.0, // Adjust top position as needed
        right: 7.0, // Adjust right position as needed
        child: Container(
          padding: EdgeInsets.all(4.0), // Add padding to the small container
          decoration: BoxDecoration(
            color: Colors.white,   // Dark background with some transparency
            borderRadius: BorderRadius.circular(4), // Small rounded corners
          ),
          child:SvgPicture.asset("svgs/frame3.svg")
        ),
      ),
    ],
  ),
),


SizedBox(
  height: MediaQuery.of(context).size.height * 0.003, // Adjust the fraction as needed
),

    Padding(
     padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * (100 / 490)), // 375 is the width reference

      child: Text(
        "ProGlow Auto Spa",
        maxLines: 1,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.04, // Adjusted font size based on screen width
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
SizedBox(
  height: MediaQuery.of(context).size.height * 0.003, // Adjust the fraction as needed
),

    Padding(
    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * (79 / 450)),

      child: Row (
       
        children: [
      
           SvgPicture.asset(
        "svgs/location.svg", // Path to your SVG file
        width: MediaQuery.of(context).size.width * 0.05, // Adjust the size as needed
        color: primarycolor, // Apply color if you want to tint the SVG icon
      ),
      // Adjusted icon size based on screen width// Adjusted icon size based on screen width
       SizedBox(width: MediaQuery.of(context).size.width * 0.01), 
          Text('0.8 km',  style: TextStyle(
              color: Color(0xFF797979),
            ),),
          SizedBox(width: MediaQuery.of(context).size.width * 0.02), // Adjusted width based on screen width
         SvgPicture.asset(
        "svgs/clock.svg", // Path to your SVG file
        width: MediaQuery.of(context).size.width * 0.05, // Adjust the size as needed
        color: primarycolor, // Apply color if you want to tint the SVG icon
      ),
       SizedBox(width: MediaQuery.of(context).size.width * 0.01) ,// Adjusted icon size based on screen width
          Text("5 mins",  style: TextStyle(
              color: Color(0xFF797979),
            ),),
        ],
      ),
    ),
    SizedBox(height: MediaQuery.of(context).size.height * 0.009), // Adjusted height based on screen height
    Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * (79 / 350)),
      child: Row(
        children: [
          Text(
            "40LE-60LE",
            style: TextStyle(
              color: primarycolor,
              fontSize: 14
            ),
          ),
          Text(
            "/Service",
             style: TextStyle(
              color: Color(0xFF797979),
            ),
          )
        ],
      ),
    )
  ],
);


  }
}   