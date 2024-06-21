import 'package:flutter/material.dart';
import 'package:washit_project/widgets/CustomTextformfield.dart';
import 'package:washit_project/widgets/Custombutton.dart';
import 'package:washit_project/widgets/constant.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    // Get MediaQuery information
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final textScaleFactor = mediaQuery.textScaleFactor;

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.05), // General padding for the whole body
        child: Column(
          children: [
            // Title
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.01),
                child: Text(
                  "New Password",
                  style: TextStyle(
                    fontSize: 32 * textScaleFactor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // Subtitle
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.01,
                  top: screenHeight * 0.01,
                ),
                child: Text(
                  "Your new password must be different from previously used passwords.",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14 * textScaleFactor,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            // Password label
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.04,
              ),
              child: Row(
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18 * textScaleFactor,
                    ),
                  ),
                ],
              ),
            ),
            // Password field
            CustomTextformfield(
              hinttext: "**********",
              obscuretext: true,
          svgSuffixIconPath: "svgs/eye-slash2.png",
          
          
            ),
            SizedBox(height: screenHeight * 0.01),
            // Confirm Password label
            Padding(
              padding: EdgeInsets.only(
                left: screenWidth * 0.04,
              ),
              child: Row(
                children: [
                  Text(
                    "Confirm Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18 * textScaleFactor,
                    ),
                  ),
                ],
              ),
            ),
            // Confirm Password field
            CustomTextformfield(
              hinttext: "**********",
              obscuretext: true,
              svgSuffixIconPath: "svgs/eye-slash2.png",
            ),
            SizedBox(height: screenHeight * 0.03),
            // Create New Password button
            Container(
              width: double.infinity,
              child: Custombutton(
                color: primarycolor,
                text: "Create New Password",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
