import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_wash/cubits/auth_cubit/auth_state.dart';
import 'package:car_wash/screens/Profile.dart';
import 'package:car_wash/widgets/Custombutton.dart';
import 'package:car_wash/widgets/constant.dart';

import '../cubits/auth_cubit/auth_cubit.dart';
import '../features/authentication/verification/presentation/widgets/otp_form.dart';

class Verficiation extends StatelessWidget {
  const Verficiation({Key? key});

  @override
  Widget build(BuildContext context) {
    // Get the media query data
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final textScaleFactor = mediaQuery.textScaleFactor;
    final emailcontorller=TextEditingController();
    final Verficiationcontroller=TextEditingController();

    return BlocConsumer<Authcubit, Authstate>(
      listener: (context, state) {
        if(state is VerifyLoadingstate){
           CircularProgressIndicator();
        }
        if(state is Verifyuccessstate){
           Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Profile();
                      }),
                    );
        } else if(state is Verifyaliurestate)
        {
          Text("Error..........");
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth *
                    0.05), // Use screen width for horizontal padding
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 1,
                      top: screenHeight *
                          0.05), // Add top padding based on screen height
                  child: Text(
                    "Verify Code",
                    style: TextStyle(
                      fontSize: 30 *
                          textScaleFactor, // Adjust text size based on text scale factor
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1, top: screenHeight * 0.01),
                  child: Text(
                    "Please enter the code we just sent to email",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14 *
                          textScaleFactor, // Adjust text size based on text scale factor
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 1, top: screenHeight * 0.005),
                  child: Text(
                    "example@email.com",
                    style: TextStyle(
                      color: primarycolor,
                      fontSize: 14 *
                          textScaleFactor, // Adjust text size based on text scale factor
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        screenHeight * 0.01), // Use screen height for spacing
                Row(
                  children: [
                 //   OtpForm(),
                  ],
                ),
                SizedBox(
                    height:
                        screenHeight * 0.01), // Use screen height for spacing
                Column(
                  children: [
                    Text(
                      "Didn't receive OTP?",
                      style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14 * textScaleFactor),
                    ),
                    SizedBox(
                        height: screenHeight *
                            0.01), // Use screen height for spacing
                    Text(
                      "Resend code",
                      style: TextStyle(
                        color: primarycolor,
                        decoration: TextDecoration.underline,
                        decorationColor: primarycolor,
                        fontSize: 14 *
                            textScaleFactor, // Adjust text size based on text scale factor
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height:
                        screenHeight * 0.03), // Use screen height for spacing
                GestureDetector(
                  onTap: () {
                  //  BlocProvider.of<Authcubit>(context).Verify(email: emailcontorller.text, verificationCode: Verficiationcontroller.text);
                   
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.0,
                    ), // Use screen width for horizontal padding
                    child: Custombutton(
                      color: primarycolor,
                      text: "Verify",
                    ),
                  ),
                ),
                SizedBox(
                    height:
                        screenHeight * 0.02), // Use screen height for spacing
              ],
            ),
          ),
        );
      },
    );
  }
}
