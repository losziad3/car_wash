import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class AppStyles {
  static  TextStyle font24Black500 = TextStyle(
    color: AppColors.black,
    fontSize: 24.sp,
    fontWeight: FontWeight.w500,
  );
  static  TextStyle font14DarkGrey400 = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
  static  TextStyle font14Black400 = TextStyle(
    color: AppColors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static  TextStyle font14Blue600 = TextStyle(
    color: AppColors.blue,
    decoration: TextDecoration.underline,
    fontSize: 14.sp,
    fontWeight: FontWeight.w600,
    decorationColor: AppColors.blue
  );
  static  TextStyle font16White500 = TextStyle(
    color: AppColors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
  static  TextStyle font14Red400 = TextStyle(
    color: AppColors.red,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
}
