import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../core/theming/colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  final dynamic child;
  final VoidCallback? onTap;
  final double size;

  const CustomCircleAvatar({
    super.key,
    required this.child,
    this.onTap,
    this.size = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    var radius = size.w;
    var imageSize = radius * 0.75;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.lightGrey,
            width: 2.w,
          ),
        ),
        child: CircleAvatar(
          backgroundColor: AppColors.white,
          radius: radius,
          child: child is String
              ? SvgPicture.asset(
            child,
            fit: BoxFit.cover,
            width: imageSize,
            height: imageSize,
          )
              : Icon(
            child,
            size: imageSize,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
