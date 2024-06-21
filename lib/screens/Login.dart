import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_wash/screens/LoginFacebook.dart';
import 'package:car_wash/screens/ResetPassword.dart';
import 'package:car_wash/screens/Verficiation.dart';
import 'package:car_wash/screens/signup.dart';
import 'package:car_wash/widgets/CircleAvater.dart';
import 'package:car_wash/widgets/CustomTextformfield.dart';
import 'package:car_wash/widgets/CustomButton.dart';
import 'package:car_wash/widgets/constant.dart';
import 'package:http/http.dart' as http;

import '../cubits/auth_cubit/auth_cubit.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.013,
                ),
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
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width *
                      0.016, // 12 / 375 for left padding
                  top: MediaQuery.of(context).size.height *
                      0.0107, // 8 / 750 for top padding
                ),
                child: Text(
                  "Hi! Welcome back, you've been missed",
                  style: TextStyle(
                    color: const Color(0xFF797979),
                    fontSize: 14 * textScaleFactor,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width *
                      0.0427, // 16 / 375 for left padding
                  top: MediaQuery.of(context).size.height *
                      0.0133, // 10 / 750 for top padding
                ),
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
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width *
                      0.0427, // 16 / 375 for left padding
                ),
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
                    padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width *
                          0.0133, // 10 / 750 for right padding
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResetPass(),
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
                    BlocProvider.of<Authcubit>(context).Login(
                        email: emailController.text,
                        password: passwordController.text);
                  }
                },
              ),
              SizedBox(height: screenHeight * 0.02),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Login as a supplier",
                    style: TextStyle(
                      color: primarycolor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      indent: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Or sign in with",
                      style: TextStyle(
                        fontSize: 14 * textScaleFactor,
                      ),
                    ),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Colors.grey,
                      indent: 0,
                      endIndent: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03),
              /*  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCircleAvatar(assetPath: 'svgs/gmail.svg'),
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      CustomCircleAvatar(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return FacebookLogin();
                            }),
                          );
                        },
                        assetPath: 'svgs/facebook.svg',
                      ),
                    ],
                  ),*/
              SizedBox(height: screenHeight * 0.03),
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
                          builder: (context) => SignUp(),
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
    );

  }
}
/*
* return BlocConsumer<Authcubit, Authstate>(
      listener: (context, state) {
       if(state is LoginSuccessstate){
                Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Verficiation(),
                          ),
                        );

              }
              if(state is LoginFaliurestate){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    height: 300,
                    child: const Text("SomeThing went wrong"),)));
              }
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: defaultPadding,
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.013,
                    ),
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
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width *
                          0.016, // 12 / 375 for left padding
                      top: MediaQuery.of(context).size.height *
                          0.0107, // 8 / 750 for top padding
                    ),
                    child: Text(
                      "Hi! Welcome back, you've been missed",
                      style: TextStyle(
                        color: const Color(0xFF797979),
                        fontSize: 14 * textScaleFactor,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width *
                          0.0427, // 16 / 375 for left padding
                      top: MediaQuery.of(context).size.height *
                          0.0133, // 10 / 750 for top padding
                    ),
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
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width *
                          0.0427, // 16 / 375 for left padding
                    ),
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
                        padding: EdgeInsets.only(
                          right: MediaQuery.of(context).size.width *
                              0.0133, // 10 / 750 for right padding
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ResetPass(),
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
                        BlocProvider.of<Authcubit>(context).Login(
                            email: emailController.text,
                            password: passwordController.text);
                      }
                    },
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Login as a supplier",
                        style: TextStyle(
                          color: primarycolor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                          indent: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Or sign in with",
                          style: TextStyle(
                            fontSize: 14 * textScaleFactor,
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Divider(
                          color: Colors.grey,
                          indent: 0,
                          endIndent: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),
                /*  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCircleAvatar(assetPath: 'svgs/gmail.svg'),
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      CustomCircleAvatar(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return FacebookLogin();
                            }),
                          );
                        },
                        assetPath: 'svgs/facebook.svg',
                      ),
                    ],
                  ),*/
                  SizedBox(height: screenHeight * 0.03),
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
                              builder: (context) => SignUp(),
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
        );
      },
    );
* */