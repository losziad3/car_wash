import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_wash/core/theming/styles.dart';
import 'package:car_wash/widgets/CircleAvater.dart';
import '../theming/colors.dart';

AppBar appBarWithCustomAvatar(String title, VoidCallback onTap) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    title: Text(title),
    backgroundColor: AppColors.white,
    leading: GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 8.w),
        child: const CustomCircleAvatar(
          child: Icons.arrow_back,
          size: 30,
        ),
      ),
    ),
  );
}

AppBar appBarWithTextButton(String title, VoidCallback onPressed) {
  return AppBar(
    centerTitle: true,
    elevation: 0,
    title: Text(title),
    backgroundColor: AppColors.white,
    actions: [
      TextButton(
        onPressed: onPressed,
        child: Text('Skip' , style: AppStyles.font14Blue600,),
      ),
    ],
  );
}
