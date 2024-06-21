import 'package:flutter/material.dart';
import 'package:washit_project/widgets/constant.dart';

class Custombuttonloc extends StatelessWidget {
  Custombuttonloc({this.onTap, required this.text, this.color, this.colorLocation});

  String text;
  VoidCallback? onTap;
  Color? color;
  Color? colorLocation;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: colorLocation ?? Colors.transparent, // Handle nullable colorLocation
          ),
          borderRadius: BorderRadius.circular(32),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: primarycolor),
          ),
        ),
      ),
    );
  }
}
