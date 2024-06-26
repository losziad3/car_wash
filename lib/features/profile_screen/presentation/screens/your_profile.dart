import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';

import '../../../../core/widgets/app_bar.dart';
import '../../../../widgets/CustomButton.dart';
import '../../../../widgets/CustomTextformfield.dart';
import '../../../../widgets/constant.dart';
import '../../../../widgets/custom_number_text_form_field.dart';
import '../../../../widgets/gender.dart';
import '../../../../widgets/title_of_text_form_field.dart';

class YourProfile extends StatelessWidget {
  const YourProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final textScaleFactor = mediaQuery.textScaleFactor;
    void Function(PhoneNumber)? onChanged;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarWithCustomAvatar('Your Profile', () {}),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.04,
            top: screenHeight * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Name
              TitleOfTextFormField(textScaleFactor: textScaleFactor, text: 'Name',),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              CustomTextformfield(
                hinttext: "Example",
                obscuretext: false,
                onChanged: (value) {
                  // email = value; // Save the email input
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is name';
                  }
                  final emailRegex = RegExp(
                    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
                  );
                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid name';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),

              //Phone Number
              TitleOfTextFormField(textScaleFactor: textScaleFactor, text: 'Phone Number',),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              customNumberTextFormField(screenWidth, textScaleFactor, onChanged),

              //Email
              TitleOfTextFormField(textScaleFactor: textScaleFactor, text: 'Email',),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              CustomTextformfield(
                hinttext: "example@gmail.com",
                obscuretext: false,
                onChanged: (value) {
                  // email = value; // Save the email input
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
                height: screenHeight * 0.02,
              ),

              //Password
              TitleOfTextFormField(textScaleFactor: textScaleFactor, text: 'Password',),
              CustomTextformfield(
                hinttext: "*****************",
                obscuretext: true,
                // svgSuffixIconPath: "svgs/eye-slash2.png",
                onChanged: (value) {
                  // password = value; // Save the password input
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
              SizedBox(
                height: screenHeight * 0.02,
              ),

              //Gender
              TitleOfTextFormField(textScaleFactor: textScaleFactor, text: 'Gender',),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              GenderDropdown(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a gender';
                  }
                  return null;
                },

              ),

              //Button
              SizedBox(
                height: screenHeight * 0.1,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth *
                        0.01), // Adjust horizontal padding as needed
                child: SizedBox(
                  width: double
                      .infinity, // This will make the button take all the width of the screen
                  child: Custombutton(

                    color: primarycolor,
                    text: "Update",
                    onTap: () {
                      // Validate the form
                      // if (formKey.currentState!.validate()) {
                      //   BlocProvider.of<Authcubit>(context).register(email: emailController.text, phone: phoneContorller.text, password: passwordController.text) ;
                      //
                      // }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Example How to use Gender
/*
* Example How to use Gender
*
*class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  String? _gender;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          GenderDropdown(
            onChanged: (value) {
              setState(() {
                _gender = value;
              });
            },
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please select a gender';
              }
              return null;
            },
            onSaved: (value) {
              _gender = value;
            },
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                print('Selected gender: $_gender');
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

*/