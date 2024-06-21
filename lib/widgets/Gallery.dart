import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 0.02 * MediaQuery.of(context).size.width), // 2% of the screen width
          width: 0.43 * MediaQuery.of(context).size.width, // 45% of the screen width
          height: 0.20 * MediaQuery.of(context).size.height, // 25% of the screen height
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: SvgPicture.asset(
            'svgs/mazda.svg', // Replace 'assets/your_svg_file_1.svg' with your SVG asset path
            fit: BoxFit.contain,
          ),
        ),
        Spacer(flex: 1),
        Container(
          margin: EdgeInsets.only(right: 0.02 * MediaQuery.of(context).size.width), // 2% of the screen width
          width: 0.43 * MediaQuery.of(context).size.width, // 45% of the screen width
          height: 0.20 * MediaQuery.of(context).size.height, // 25% of the screen height
          decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(16),
          ),
          child: SvgPicture.asset(
            'svgs/mazda.svg', // Replace 'assets/your_svg_file_2.svg' with your SVG asset path
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
