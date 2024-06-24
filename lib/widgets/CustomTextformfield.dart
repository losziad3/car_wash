import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextformfield extends StatelessWidget {
  // Constructor with parameters and default values
  CustomTextformfield({
    this.hinttext,
    this.onChanged,
    this.label,
    this.svgSuffixIconPath, // SVG asset path for suffix icon
    this.preIcons,
    this.obscuretext = false,
    this.validator,
    
    this.onSaved,
  });

  final String? hinttext;
  final String? label;
  final String? svgSuffixIconPath; // Path to the SVG file for suffix icon
  final IconData? preIcons;
  final bool obscuretext;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
   FormFieldSetter<String>? onSaved;
 


  @override
  Widget build(BuildContext context) {
    // Get the media query data
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
   // final screenheight= mediaQuery.size.height;

    // Define default padding for the text form field
    final defaultPadding = EdgeInsets.symmetric(
      horizontal: screenWidth * 0.01, // Adjusted horizontal padding
    );

    return Padding(
      padding: defaultPadding,
      child: TextFormField(
       onSaved: onSaved,
        obscureText: obscuretext,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(

          
          enabledBorder: OutlineInputBorder(

            borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            borderRadius: BorderRadius.circular(36),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor), // Use primary color for focus
            borderRadius: BorderRadius.circular(36),
          ),
          hintText: hinttext,
          labelText: label,
          hintStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.grey[100],
         suffixIcon: svgSuffixIconPath != null
    ? Image.asset(
        svgSuffixIconPath!,
        width: 10, // Adjust the size of the SVG icon
        height:10, // Adjust the size of the SVG icon
    )
    : null,
          prefixIcon: preIcons != null
              ? Icon(
                  preIcons,
                  color: Colors.grey,
                  size: screenWidth * 0.06,
                )
              : null,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
      ),
    );
  }
}

