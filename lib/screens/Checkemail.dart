import 'package:flutter/material.dart';
import 'package:washit_project/screens/Verficiation.dart';
import 'package:washit_project/widgets/Custombutton.dart';
import 'package:washit_project/widgets/constant.dart';

class CheckMail extends StatefulWidget {
  const CheckMail({super.key});

  @override
  State<CheckMail> createState() => _CheckMailState();
}

class _CheckMailState extends State<CheckMail> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    // Calculate the top and bottom padding using media query
    final topPadding = screenHeight * 0.01; // 1% of screen height
    final bottomPadding = screenHeight * 0.04; // 4% of screen height

    return Scaffold(
      body: Padding(
     padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1), // Adjust the fraction as needed

        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
             padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.05), // Adjust the fraction as needed

                child: Text(
                  "Check email",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                      top: topPadding, // Use media query for top padding
                      bottom: bottomPadding, // Use media query for bottom padding
                    ),
                    child: Text(
                      "We sent an OTP code to ",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: topPadding, // Use media query for top padding
                      bottom: bottomPadding, // Use media query for bottom padding
                    ),
                    child: Text(
                      "example@email.com ",
                      style: TextStyle(
                        color: primarycolor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05), 
              child: Container(
                width: double.infinity,
                child: Custombutton.new(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Verficiation();
                      }),
                    );
                  },
                  text: "Open email app",
                  color: primarycolor,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.02), // Use media query for height
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return Verficiation();
                  }),
                );
              },
              child: Text(
                "Didn't receive OTP?",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
           SizedBox(height: MediaQuery.of(context).size.height * 0.01),

            Text(
              "Resend code",
              style: TextStyle(
                color: primarycolor,
                decoration: TextDecoration.underline,
                decorationColor: primarycolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
