import 'package:flutter/material.dart';

class StatueOfBookingScreen extends StatelessWidget {
  final String text;
  final Color color;
  final Color colorOfText;
  const StatueOfBookingScreen({
    super.key, required this.text, required this.color, required this.colorOfText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Text(text, style: TextStyle(color: colorOfText),),
        ),
      ),
    );
  }
}