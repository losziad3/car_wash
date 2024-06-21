import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:washit_project/screens/Login.dart';
import 'package:washit_project/screens/Specialistpro.dart';
import 'package:washit_project/screens/Verficiation.dart';
import 'package:washit_project/widgets/CircleAvater.dart';
import 'package:washit_project/widgets/CustomTextformfield.dart';
import 'package:washit_project/widgets/Custombutton.dart';
import 'package:washit_project/widgets/constant.dart';

class SignUpProvider extends StatefulWidget {
  SignUpProvider();

  @override
  State<SignUpProvider> createState() => _SignUpProviderState();
}

class _SignUpProviderState extends State<SignUpProvider> {
  bool? _isChecked = false;
  final formKey = GlobalKey<FormState>(); // Define a form key
  String? email; // Store the user's email
  String? password; // Store the user's password
  String? phoneNumber; // Store the user's phone number
 
  String groupvalue="supplier";
    String groupvaluespecialist="Specialist";
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final textScaleFactor = mediaQuery.textScaleFactor;

   
    return Scaffold(
      
      body: Padding(
        padding:  EdgeInsets.only(top: MediaQuery.of(context).size.width*0.05),
        child: Form(
          key: formKey, // Assign the form key to the form
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.03,
              vertical: screenHeight * 0.09,
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
          height: MediaQuery.of(context).size.height * 0.02, // Adjust the multiplier as needed
        ),

   Row(
  children: [
    Radio(
      value: "Supplier",
      groupValue: groupvalue,
      activeColor: primarycolor,
      onChanged: (value) {
        setState(() {
          groupvalue = (value as String?)!;
        });
      },
    ),
    Text(
      "Supplier",
      style: TextStyle(
        fontSize: 12,
      ),
    ),
    SizedBox(width: MediaQuery.of(context).size.width * 0.03),

   Radio (
  value: "Specialist",

  groupValue: groupvalue,
  activeColor: primarycolor,
  onChanged: (value) {
    setState(() {
      groupvalue = (value as String?)!;
    });
    // Navigate to the desired page based on the selected value
    if (value == "Specialist") {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Specialistpro(), 
        ),
      );
    }
  },
),
Text(
      "Specialist",
      style: TextStyle(
        fontSize: 12,
      ),
    ),


  ],
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
              SizedBox(
          height: MediaQuery.of(context).size.height * 0.02, // Adjust the multiplier as needed
        ),
        
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.03),
                child: Row(
                  children: [
                    Text(
                      "Name",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18 * textScaleFactor,
                      ),
                    ),
                  ],
                ),
              ),
                    SizedBox(height: screenHeight * 0.01),
                 CustomTextformfield(
              hinttext: "*********",
        
        
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
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03,),
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
            contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01),
            // Set the prefix text to "+20^"
            prefixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Icon(
                Icons.access_alarms
              ),
            ),
          ),
          onChanged: (value) {
            // Handle phone number input
            phoneNumber = value.completeNumber; // Save the phone number input
          },
          validator: (value) {
            // Validate phone number input
            if (value!.number == null || value.number.isEmpty) {
              return 'Phone number is required';
            }
        
            // Define a regular expression for Egyptian phone numbers
            final egyptPhoneNumberRegex = RegExp(r'^\+20\d{10}$');
        
            // Check if the phone number matches the Egyptian phone number pattern
            if (!egyptPhoneNumberRegex.hasMatch(value.completeNumber)) {
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
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.01), // Adjust horizontal padding as needed
        child: SizedBox(
          width: double.infinity, // This will make the button take all the width of the screen
          child: Custombutton(
            text: "Sign in",
            color: primarycolor,
            onTap: () {
              // Validate the form
              if (formKey.currentState!.validate()) {
                // Form is valid, proceed with your sign-up process
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              }
            },
          ),
        ),
            ),
          ],
        ),
        
             SizedBox(
  height: MediaQuery.of(context).size.height * 0.02, // Adjust the multiplier as needed
),

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
  }
}
