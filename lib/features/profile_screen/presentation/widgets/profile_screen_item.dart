import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:car_wash/core/constants/app_constant.dart';

class ProfileScreenItem extends StatelessWidget {
  String iconPath;
  String text;
  void Function()? onTap;

  ProfileScreenItem({required this.iconPath, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              height: 30.0,
            ),
            const SizedBox(
              width: 15.0,
            ),
             Text(text),
            const Spacer(),
            SvgPicture.asset(
              kArrowIcon,
            ),
          ],
        ),
      ),
    );
  }
}