import 'package:flutter/material.dart';

class GenderDropdown extends StatelessWidget {
  // Constructor with parameters and default values
  GenderDropdown({
    this.onChanged,
    this.validator,
    this.onSaved,
  });

  final Function(String?)? onChanged;
  final String? Function(String?)? validator;
  final FormFieldSetter<String>? onSaved;

  @override
  Widget build(BuildContext context) {
    // Get the media query data
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    // Define default padding for the dropdown form field
    final defaultPadding = EdgeInsets.symmetric(
      horizontal: screenWidth * 0.01, // Adjusted horizontal padding
    );

    return Padding(
      padding: defaultPadding,
      child: DropdownButtonFormField<String>(
        onSaved: onSaved,
        validator: validator,
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFFFFFFF)),
            borderRadius: BorderRadius.circular(36),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
            borderRadius: BorderRadius.circular(36),
          ),
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
        ),
        items: [
          const DropdownMenuItem(
            value: 'male',
            child: Text('Male'),
          ),
          const DropdownMenuItem(
            value: 'female',
            child: Text('Female'),
          ),
        ],
        hint: const Text('Select Gender'),
      ),
    );
  }
}
