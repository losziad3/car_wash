import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final bool? isObscureText;
  final Color? backGroundColor;
  final TextEditingController? controller;
  final Function (String?) validator;
  const AppTextFormField(
      {super.key,
      required this.hintText,
      this.suffixIcon,
      this.isObscureText,
      this.focusedBorder,
      this.enabledBorder,
      this.hintStyle,
      this.backGroundColor, this.controller, required this.validator});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller:  controller,
      decoration: InputDecoration(
        isDense: true,
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(
                  color:AppColors.lightGrey,
                  width: 1.3.w,
                ),
                borderRadius: BorderRadius.circular(20)),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.lightGrey,
                  width: 1.3.w,
                ),
                borderRadius: BorderRadius.circular(20)),
        errorBorder:  OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.red,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(20)),
        focusedErrorBorder:OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.red,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(20)) ,
        hintText: hintText,
        hintStyle: hintStyle ?? AppStyles.font14DarkGrey400,
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: backGroundColor ?? AppColors.lightGrey,
      ),
      obscureText: isObscureText ?? false,
      validator: (value){
      return validator(value);
      },
    );
  }
}
