import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:washit_project/widgets/constant.dart';

class CustomStack extends StatelessWidget {
  const CustomStack({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final horizontalPadding = screenWidth * 0.05; // Dynamic horizontal padding based on screen width
    final verticalPadding = screenHeight * 0.02; // Dynamic vertical padding based on screen height

    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding/1.2,
          ),
          child: Container(
            width: double.infinity,
            height: screenHeight * 0.2,
            decoration: BoxDecoration(
              color: Colors.white,
           borderRadius: BorderRadius.only(
  topLeft: Radius.circular(16),
  topRight: Radius.circular(16),
  bottomLeft: Radius.circular(16),
  bottomRight: Radius.circular(16),
),

              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: Offset(0, 2),
                ),
              ],
              border: Border.all(
                color: Colors.black.withOpacity(0.1),
                width: 1,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: verticalPadding*2,
                left: horizontalPadding*8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: screenWidth * 0.3,
                    height: 20,
                    padding: EdgeInsets.only(left: 7),
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F9FB),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      "Car Washing Service",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: primarycolor,
                      ),
                    ),
                    ),
                  SizedBox(height: verticalPadding / 2),
                  Text(
                    "ProGlow Auto Spa",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: verticalPadding / 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SvgPicture.asset("svgs/location.svg", color: primarycolor),
                      SizedBox(width: horizontalPadding / 3),
                      Text('0.8 km',style: TextStyle(
                      color:  Color(0xFF797979), 
                      ),),
                      SizedBox(width: horizontalPadding/2),
                      SvgPicture.asset("svgs/clock.svg", color: primarycolor),
                      SizedBox(width: horizontalPadding / 3),
                      Text("5 mins",style: TextStyle(
                      color:  Color(0xFF797979), 
                      ),),
                    ],
                  ),
                  SizedBox(height: verticalPadding/2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "40LE-60LE",
                        style: TextStyle(
                          color: primarycolor,
                        ),
                      ),
                      
                      Text(
                        "/Service",
                       style: TextStyle(
                      color:  Color(0xFF797979), 
                      ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        // Positioned for save icon
        Positioned(
          top: verticalPadding*2,
          right: horizontalPadding*1.5,
          child: SvgPicture.asset(
            'svgs/save.svg',
            color: primarycolor,
          
          
          ),
        ),
        // Positioned for main SVG image
       Positioned(
    top: verticalPadding * 2,
    left: horizontalPadding * 1.7,
    child: Container(
         width: MediaQuery.of(context).size.width * (125 / 390), // 375 is the width reference
  height: MediaQuery.of(context).size.height * (130 / 812), // 812 is the height reference       //screenHeight * 0.17,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
                // You can add more corner radius options as needed
            ),
            image: DecorationImage(
              
                image: AssetImage('svgs/Rectangle.png'),
                fit: BoxFit.cover, // Ensure the image covers the entire container
            ),
        ),
    ),
),

        // Positioned for star icon and rating
        Positioned(
          top: verticalPadding *2.5 ,
          left: horizontalPadding *2 ,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding / 3, vertical: verticalPadding / 4),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
              SvgPicture.asset("svgs/Star 4.svg"),
                SizedBox(width: horizontalPadding / 2),
                Text(
                  "4.8",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,


                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
