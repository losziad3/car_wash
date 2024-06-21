import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:washit_project/cubits/auth_cubit/auth_state.dart';
import 'package:washit_project/screens/Login.dart';
import 'package:washit_project/widgets/CircleAvater.dart';
import 'package:washit_project/widgets/CustomTextformfield.dart';
import 'package:washit_project/widgets/Custombutton.dart';
import 'package:washit_project/widgets/constant.dart';

import '../cubits/auth_cubit/auth_cubit.dart';

class SignUp extends StatefulWidget {
  SignUp();

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? _isChecked = false;
  final formKey = GlobalKey<FormState>(); // Define a form key
  final emailController=TextEditingController();
   final passwordController=TextEditingController();
    final phoneContorller=TextEditingController();
  String? email; // Store the user's email
  String? password; // Store the user's password
  String? phoneNumber; // Store the user's phone number

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final textScaleFactor = mediaQuery.textScaleFactor;

    return BlocConsumer<Authcubit, Authstate>(
      listener: (context, state) {
        if(state is RegisterLoadingstate){
          Center(child: CircularProgressIndicator());
        }
      if (state is Registersucessstate){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
          return  Login();
        }
        )
        ,);
      }else if (state is Registerfaliurestate){
        showDialog(context: context, builder: (context) => Scaffold(
          appBar: AppBar(),
          body: Container(
              child: Center(child: Text("There is an Error, Try Again Later",style: TextStyle(color: Colors.white),)),
              color: Colors.black,
          ),
        ),);
      }
        
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
          body: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Form(
              key: formKey, // Assign the form key to the form
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03,
                  vertical: screenHeight * 0,
                ),
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 32 * textScaleFactor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.02,
                      top: screenHeight * 0.01,
                    ),
                    child: Text(
                      "Fill your information below or register with your social account",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.03),
                    child: Row(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18 * textScaleFactor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Email input with validation
                  CustomTextformfield(
                    hinttext: "example@gmail.com",
                    obscuretext: false,
                    onChanged: (value) {
                      email = value; // Save the email input
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
                  SizedBox(height: screenHeight * 0.01),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.05),
                    child: Row(
                      children: [
                        Text(
                          "Phone Number",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18 * textScaleFactor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Phone number input with validation
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.03,
                    ),
                    child: IntlPhoneField(
                      initialCountryCode: 'EG',
                      showCountryFlag: false,
                      showDropdownIcon: false,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(32),
                        ),
                        border: OutlineInputBorder(),
                        hintText: "Enter Phone Number",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14 * textScaleFactor,
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.01),
                        // Set the prefix text to "+20^"
                        prefixIcon: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: Icon(Icons.access_alarms),
                        ),
                      ),
                      onChanged: (value) {
                        // Handle phone number input
                        phoneNumber =
                            value.completeNumber; // Save the phone number input
                      },
                      validator: (value) {
                        // Validate phone number input
                        if (value!.number == null || value.number.isEmpty) {
                          return 'Phone number is required';
                        }
                
                        // Define a regular expression for Egyptian phone numbers
                        final egyptPhoneNumberRegex = RegExp(r'^\+20\d{10}$');
                
                        // Check if the phone number matches the Egyptian phone number pattern
                        if (!egyptPhoneNumberRegex
                            .hasMatch(value.completeNumber)) {
                          return 'Please enter a valid Egyptian phone number starting with +20';
                        }
                
                        return null; // Phone number is valid
                      },
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.03),
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
                  // Password input with validation
                  CustomTextformfield(
                    hinttext: "*****************",
                    obscuretext: true,
                    svgSuffixIconPath: "svgs/eye-slash2.png",
                    onChanged: (value) {
                      password = value; // Save the password input
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                        activeColor: Colors.blue,
                      ),
                      Text("Agree with "),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "Terms & Condition",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF346EF7),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth *
                                0.01), // Adjust horizontal padding as needed
                        child: SizedBox(
                          width: double
                              .infinity, // This will make the button take all the width of the screen
                          child: Custombutton(
                        
                           color: primarycolor,
                           text: "Sign up",
                            onTap: () {
                              // Validate the form
                              if (formKey.currentState!.validate()) {
                               BlocProvider.of<Authcubit>(context).register(email: emailController.text, phone: phoneContorller.text, password: passwordController.text) ; 
                                
                              }
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          indent: screenWidth * 0.08,
                          endIndent: screenWidth * 0.02,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.02),
                        child: Text("Or sign up with"),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          indent: screenWidth * 0.02,
                          endIndent: screenWidth * 0.08,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                /*  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCircleAvatar(assetPath: 'svgs/gmail.svg'),
                      SizedBox(
                        width: screenWidth * 0.03,
                      ),
                      CustomCircleAvatar(assetPath: 'svgs/facebook.svg'),
                    ],
                  ),*/
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12 * textScaleFactor,
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Login();
                              },
                            ),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Color(0xFF346EF7),
                            fontWeight: FontWeight.w500,
                            fontSize: 12 * textScaleFactor,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF346EF7),
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
  }
}
