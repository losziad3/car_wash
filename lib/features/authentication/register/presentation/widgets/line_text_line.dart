import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';

class LineTextLine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30.w ),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: AppColors.grey.withOpacity(0.3),
              indent: 8.w,
              endIndent: 2.w,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 2.w),
            child: const Text("Or sign up with" , style: TextStyle(color: AppColors.darkGrey),),
          ),
          Expanded(
            child: Divider(
              color: AppColors.grey.withOpacity(0.3),
              indent: 2.w,
              endIndent: 8.w,
            ),
          ),
        ],
      ),
    );
  }
}
