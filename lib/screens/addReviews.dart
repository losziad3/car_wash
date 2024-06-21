import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:washit_project/widgets/Custombutton.dart';
import 'package:washit_project/widgets/constant.dart';

class AddReviews extends StatelessWidget {
  const AddReviews({super.key}); 

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
        final double screenHeight = MediaQuery.of(context).size.height;
    final buttonWidth = screenWidth * 0.9; // Width as 80% of the screen width
    final buttonHeight = screenHeight * 0.07; 
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                 Container(
                   width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height * 0.4, // Adjust height as needed
                   child: Image.network(
                     'https://cdn1.jigidi.com/thumbs/VVZW4VU3/l',
                     fit: BoxFit.cover,
                   ),
                 ),
                 // Positioned icons
                 

                SizedBox(height: MediaQuery.of(context).size.height * 0.01), // Adjust height based on screen height
Row(
  children: [
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFF1F9FB),
      borderRadius: BorderRadius.only(
  topLeft: Radius.circular(8),
  topRight: Radius.circular(8),
  bottomLeft: Radius.circular(4),
  bottomRight: Radius.circular(4),
),

      ),
      child: Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05), // Adjust padding based on screen width
        child: Text(
          "Car Washing",
          style: TextStyle(
            fontSize: MediaQuery.of(context).textScaleFactor * 13, // Adjust font size based on text scale factor
            fontWeight: FontWeight.w400,
            color: primarycolor,
          ),
        ),
      ),
    ),
    Spacer(),
    SvgPicture.asset("svgs/Star 4.svg"),
    SizedBox(width: MediaQuery.of(context).size.width * 0.008),

    Padding(
      padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03), // Adjust padding based on screen width
      child: Text(
        "4.8 (365 reviews)",
        style: TextStyle(
          color: Color(0xFF797979),
          fontSize: MediaQuery.of(context).textScaleFactor * 14, // Adjust font size based on text scale factor
          fontWeight: FontWeight.w400,
        ),
      ),
    ),
  ],
),
SizedBox(height: MediaQuery.of(context).size.height * 0.01), // Adjust height based on screen height
Padding(
  padding: EdgeInsets.only(
    right: MediaQuery.of(context).size.width * 0.3, // Adjust padding based on screen width
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start, // Aligns the text to the start of the column
    children: [
      Text(
        "ProGlow Auto Spa",
        style: TextStyle(
          fontSize: MediaQuery.of(context).textScaleFactor * 22, // Adjust font size based on text scale factor
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.01), // Adjust height based on screen height
      Text(
        "1012 Ocean Avenue, New York, USA",
        style: TextStyle(
          fontSize: MediaQuery.of(context).textScaleFactor * 14, // Adjust font size based on text scale factor
          fontWeight: FontWeight.w400,
          color: Color(0xFF797979),
        ),
      ),
    ],
  ),
),
SizedBox(height: MediaQuery.of(context).size.height * 0.01), // Adjust height based on screen height

               Divider(
                endIndent: MediaQuery.of(context).size.width * 0.1, // 20% of screen width
                indent: MediaQuery.of(context).size.width * 0.1, // 20% of screen width
              ),
              SizedBox(
                    height: 10,
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
              Text("Your overall rating of this product",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
              SizedBox(height: 15,),
             Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SvgPicture.asset("svgs/Star.svg"),
    SizedBox(width: MediaQuery.of(context).size.width * 0.03),
    SvgPicture.asset("svgs/Star.svg"),
    SizedBox(width: MediaQuery.of(context).size.width * 0.03), // Adjust width based on screen width
    SvgPicture.asset("svgs/Star.svg"),
    SizedBox(width: MediaQuery.of(context).size.width * 0.03), // Adjust width based on screen width
    SvgPicture.asset("svgs/Star.svg"),
    SizedBox(width: MediaQuery.of(context).size.width * 0.03), // Adjust width based on screen width
    SvgPicture.asset("svgs/Star.svg"),
  ],
),

                 SizedBox(
  height: MediaQuery.of(context).size.height * 0.02, // Adjust height based on screen height
),

                    Divider(
                endIndent: MediaQuery.of(context).size.width * 0.1, // 20% of screen width
                indent: MediaQuery.of(context).size.width * 0.1, // 20% of screen width
              ),
                  ],
                ),
                   SizedBox(
  height: MediaQuery.of(context).size.height * 0.02, // Adjust height based on screen height
),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Padding(
  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03), // Adjust left padding based on screen width
  child: Text(
    "Add detailed review",
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: MediaQuery.of(context).size.width * 0.035, // Adjust font size based on screen width
    ),
  ),
),
               Padding(
  padding: EdgeInsets.only(
    top: MediaQuery.of(context).size.height * 0.01, // Adjust top padding based on screen height
    left: MediaQuery.of(context).size.width * 0.03, // Adjust left padding based on screen width
    right: MediaQuery.of(context).size.width * 0.03, // Adjust right padding based on screen width
  ),
  child: Container(
    width: MediaQuery.of(context).size.width * 0.9, // Adjust the width of the TextField based on screen width
    child: TextField(
      decoration: InputDecoration(
        labelText: 'Enter here',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(
            width: 2.0, // Adjust the width of the border
          ),
        ),
      ),
    ),
  ),
)
,
             Container(
  width: double.infinity,
  height: MediaQuery.of(context).size.height * 0.10, // Use MediaQuery for height (12% of screen height)
  decoration: BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.white, width: 1), // Adjust border color and width as needed
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(32), // Rounded top left corner
      topRight: Radius.circular(32), // Rounded top right corner
      bottomLeft: Radius.zero, // Square bottom left corner
      bottomRight: Radius.zero, // Square bottom right corner
    ),
  ),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          width: buttonWidth, // Use calculated width
                          height: buttonHeight, // Use calculated height
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color:primarycolor,
                          ),
                          child: Center(
                            child: Text(
                              "Book Services Now",
                              style: TextStyle(
                                color:Colors.white,
                                fontSize: 16
                              ),
                            ),
                          ),
                        ),
                     ],
                    ),
),
              
              
                  
                ],)
              
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
