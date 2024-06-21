import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Servicesbar extends StatelessWidget {
  const Servicesbar({super.key, required this.text, required this.svgAssetName});

  final String text;
  final String svgAssetName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 0.2 * MediaQuery.of(context).size.width, // 20% of the screen width
          height: 0.07 * MediaQuery.of(context).size.height, // 7% of the screen height
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0.5 * MediaQuery.of(context).size.width), // 10% of the screen width for borderRadius
            border: Border.all(
              color: const Color(0xFFF1F9FB),
            ),
          ),
          child: SvgPicture.asset(
            svgAssetName,
            alignment: Alignment.center, // Center the SVG picture in the container
            fit: BoxFit.contain, // Maintain the aspect ratio and contain within the container
          ),
        ),
        SizedBox(width: 0.02 * MediaQuery.of(context).size.width), // 2% of the screen width
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}
