import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:car_wash/screens/Location.dart';
import 'package:car_wash/widgets/CustomTextformfield.dart';
import 'package:car_wash/widgets/Custombutton.dart';
import 'package:car_wash/widgets/constant.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

final GenderList = ["Male", "Female"];

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    // Retrieve media query data
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final textScaleFactor = mediaQuery.textScaleFactor;
    
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.04), // Adjust padding based on screen width
            child: Text(
              "Skip",
              style: TextStyle(
                color: primarycolor,
                fontSize: 18 * textScaleFactor, // Adjust font size based on text scale factor
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.02,
          horizontal: screenWidth * 0.04,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Complete Your Profile",
                style: TextStyle(
                  fontSize: 24 * textScaleFactor, // Adjust font size based on text scale factor
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Don't worry, only you can see your personal data. No one else will be able to see it.",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 14 * textScaleFactor, // Adjust font size based on text scale factor
                ),
              ),
            ),
           
          
            SizedBox(height: screenHeight * 0.03),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02),
              child: Row(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18 * textScaleFactor, // Adjust font size based on text scale factor
                    ),
                  ),
                ],
              ),
            ),
            CustomTextformfield(
              hinttext: "Ex. John Doe",
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.03),
              child: Row(
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18 * textScaleFactor, // Adjust font size based on text scale factor
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: screenHeight * 0.01,
                horizontal: screenWidth * 0.01,
              ),
              child: DropdownButtonFormField(
                items: GenderList.map((e) => DropdownMenuItem(child: Text(e), value: e)).toList(),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  border: OutlineInputBorder(),
                  hintText: "Select",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14 * textScaleFactor, // Adjust font size based on text scale factor
                  ),
                  filled: true,
                  fillColor: Colors.grey[100],
                  contentPadding: EdgeInsets.only(left: screenWidth * 0.1), // Adjust padding based on screen width
                ),
                onChanged: (val) {},
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Locationpage();
                }));
              },child: Container(
  width: double.infinity, // This will make the button take the entire width of the screen
  child: Custombutton(
    text: "Complete Profile",
    color: primarycolor,
  ),
),
            ),
          ],
        ),
      ),
    );
  }
}
