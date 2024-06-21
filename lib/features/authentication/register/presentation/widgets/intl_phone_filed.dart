import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/theming/colors.dart';
import '../cubit/register_cubit.dart';

class AppIntlPhoneField extends StatelessWidget {
  const AppIntlPhoneField({super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
     //  controller: context.read<RegisterCubit>().phoneController,
      initialCountryCode: 'EG',
      showCountryFlag: false,
      showDropdownIcon: false,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        isDense: true,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.lightGrey,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.lightGrey,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(20)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.red,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(20)),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.red,
              width: 1.3.w,
            ),
            borderRadius: BorderRadius.circular(20)),
        filled: true,
        fillColor: AppColors.lightGrey,
      ),
      onChanged: (value) {
      },
      validator: (value) {
        if (value == null ||
            value.number == null ||
            value.number!.isEmpty ||
            !AppRegex.isPhoneValid(value.number!)) {
          return 'Phone number is required';
        }
        return null;
      },
    );
  }
}
