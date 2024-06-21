import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:car_wash/screens/Checkemail.dart';
import 'package:car_wash/screens/NewPassword.dart';
import 'package:car_wash/widgets/CustomTextformfield.dart';
import 'package:car_wash/widgets/Custombutton.dart';
import 'package:car_wash/widgets/constant.dart';

class ResetPass extends StatelessWidget {
  const ResetPass({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.1),
        child: Column(
          children: [
            // Adjusted padding for alignment
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05),
                child: Text(
                  "Reset Password",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight * 0.01),
                child: Text(
                  "Enter your email address below and we will send you an OTP code to reset password.",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.03), 
              child: CustomTextformfield(
                hinttext: "example@gmail.com",
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05), 
              child: Container(
                width: double.infinity,
                
                child: Custombutton(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return NewPassword();
                    }));
                  },
                  color: primarycolor,
                  text: "Continue",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
