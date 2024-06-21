import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:washit_project/widgets/constant.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({
    super.key,
    required this.iconPath,  // Changed parameter name from Iconss to iconPath
    required this.Text1,
    required this.Text2,
  });

  final String iconPath;  // Changed parameter type from IconData to String
  final String Text1;
  final String Text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.2,  // Adjust the width based on screen width
          height: MediaQuery.of(context).size.width * 0.167,  // Adjust the height based on screen width
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: const Color(0xFFF1F9FB),
            ),
          ),
          child: SvgPicture.asset(
            iconPath,  // Load SVG icon from asset path
            color: primarycolor,  // Optional: You can change the color of the icon here
            fit: BoxFit.scaleDown,  // Adjust the fit as needed
          ),
        ),
        Text(
          Text1,
          maxLines: 1,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          Text2,
          maxLines: 1,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
