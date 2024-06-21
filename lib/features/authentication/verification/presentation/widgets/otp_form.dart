import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/theming/colors.dart';
import '../cubit/verification_cubit.dart';

class OtpForm extends StatelessWidget {
  final TextEditingController controller;

  const OtpForm({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<VerificationCubit>().formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          for (int i = 0; i < 6; i++)
            _OtpInputField(
              onChanged: (value) {
                if (value.length == 1) {
                  FocusScope.of(context).nextFocus();
                  controller.text += value;
                } else if (value.isEmpty) {
                  controller.text = controller.text.substring(0, controller.text.length - 1); // Remove last character on backspace
                }
              },
            ),
        ],
      ),
    );
  }
}

class _OtpInputField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const _OtpInputField({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: 53.5.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: TextFormField(
          onChanged: onChanged,
          style: TextStyle(fontSize: 18.sp),
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.lightGrey),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.lightGrey),
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: AppColors.lightGrey,
            contentPadding: EdgeInsets.symmetric(vertical: 10.h),
          ),
        ),
      ),
    );
  }
}
