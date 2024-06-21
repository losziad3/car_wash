import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Star extends StatelessWidget {
  const Star({
    super.key,
    required this.number,
    required this.color,
    required this.image,
  });

  final String number;
  final Color color;
  final String image; // Use camelCase for the variable name

  @override
  Widget build(BuildContext context) {
    // Calculate dynamic size values based on screen width and height
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Adjust dimensions and font size as a fraction of screen width or height
    final double containerWidth = screenWidth * 0.15;
    final double containerHeight = screenHeight * 0.05;
    final double fontSize = screenWidth * 0.04;

    return Container(
      width: containerWidth,
      height: containerHeight,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number,
              style: TextStyle(
                color: color,
                fontSize: fontSize,
              ),
            ),
            // Use SvgPicture.asset with the provided image path
            SvgPicture.asset(
              image,
              width: screenWidth * 0.03, // Adjust size as needed
              height: screenWidth * 0.03,
              placeholderBuilder: (BuildContext context) => CircularProgressIndicator(),
         
              
            ),
          ],
        ),
      ),
    );
  }
}
