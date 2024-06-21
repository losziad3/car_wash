import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class FacebookLogin extends StatefulWidget {
  @override
  _PhoneFieldExampleState createState() => _PhoneFieldExampleState();
}

class _PhoneFieldExampleState extends State<FacebookLogin> {
  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;
    final textScaleFactor = mediaQuery.textScaleFactor;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
      child: IntlPhoneField(
        initialCountryCode: 'EG', // Use 'EG' as the initial country code for Egypt
        showCountryFlag: false, // Show the country code
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
          hintText: "Enter phone number", // Add hint text
          hintStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14 * textScaleFactor,
          ),
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
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
    );
  }
}
