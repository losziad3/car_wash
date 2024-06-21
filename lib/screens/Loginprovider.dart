import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:car_wash/screens/LoginFacebook.dart';
import 'package:car_wash/screens/ResetPassword.dart';
import 'package:car_wash/screens/Signupprovider.dart';
import 'package:car_wash/screens/Verficiation.dart';
import 'package:car_wash/screens/signup.dart';
import 'package:car_wash/widgets/CircleAvater.dart';
import 'package:car_wash/widgets/CustomTextformfield.dart';
import 'package:car_wash/widgets/CustomButton.dart';
import 'package:car_wash/widgets/constant.dart';

class LoginProvider extends StatefulWidget {
  const LoginProvider({super.key});

  @override
  _LoginProviderState  createState() => _LoginProviderState();
}

class _LoginProviderState  extends State<LoginProvider> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    // Get the media query data
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    // Calculate padding and spacing based on the screen size
    final defaultPadding = EdgeInsets.only(
      left: screenWidth * 0.05,
      right: screenWidth * 0.05,
      top: screenHeight * 0.05,
    );
    final textScaleFactor = mediaQuery.textScaleFactor;

    return Scaffold(
      body: Padding(
        padding: defaultPadding,
        child: SafeArea(
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Sign-in",
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24 * textScaleFactor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 8),
                  child: Text(
                    "Hi! Welcome back, you've been missed",
                    style: TextStyle(
                      color: Color(0xFF797979),
                      fontSize: 14 * textScaleFactor,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
Padding(
                  padding: const EdgeInsets.only(left: 16, top: 10),
                  child: Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18 * textScaleFactor,
                    ),
                  ),
                ),

                CustomTextformfield(
                  hinttext: "example@gmail.com",
                  obscuretext: false,
                  onChanged: (value) {
                    email = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                    final emailRegex = RegExp(
                      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                    );
                    if (!emailRegex.hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18 * textScaleFactor,
                    ),
                  ),
                ),
         CustomTextformfield(
    hinttext: "**********",
    obscuretext: true,
    svgSuffixIconPath: "svgs/eye-slash2.png",
    onChanged: (value) {
        // Handle changes in the password field
        password = value;
    },
    validator: (value) {
        // Validate the password input
        if (value == null || value.isEmpty) {
            return 'Password is required';
        }
        if (value.length < 6) {
            return 'Password must be at least 6 characters';
        }
        return null;
    },
),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResetPass(),
                            ),
                          );
                        },
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 12 * textScaleFactor,
                            color: primarycolor,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                Custombutton(
                  text: "Sign In",
                  color: primarycolor,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Verficiation(),
                        ),
                      );
                    }
                  },
                ),
                SizedBox(height: screenHeight * 0.02),
                   Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12 * textScaleFactor, 
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpProvider(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          color: primarycolor,
                          fontWeight: FontWeight.w500,
                          fontSize: 12 * textScaleFactor,
                          decoration: TextDecoration.underline,
                          decorationColor: primarycolor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
