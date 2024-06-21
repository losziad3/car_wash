import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_wash/core/widgets/app_bar.dart';
import 'package:car_wash/core/widgets/app_text_button.dart';
import 'package:car_wash/features/authentication/verification/presentation/cubit/verification_cubit.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../cubit/verification_states.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBarWithCustomAvatar("", () {
        Navigator.pop(context);
      }),
      body: BlocConsumer<VerificationCubit, VerificationStates>(
        builder: (context, state) {
          final verificationCubit = context.read<VerificationCubit>();
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(10),
                  Text("Reset Password", style: AppStyles.font24Black500),
                  verticalSpace(8),
                  Text(
                    "Enter your email address below and we will \n send you an OTP code to reset your password",
                    style: AppStyles.font14DarkGrey400,
                  ),
                  verticalSpace(25),
                  Text(
                    "Email",
                    style: AppStyles.font14Black400,
                  ),
                  verticalSpace(6),
                  AppTextFormField(
                    hintText: "example@gmail.com",
                    validator: (value) {
                      if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
                        return "Please enter a valid email";
                      }
                      return null;
                    },
                    controller: emailController,
                  ),
                  verticalSpace(30),
                  AppTextButton(
                    buttonText: "Continue",
                    onPressed: () {
                      verificationCubit.forgotPassword(emailController.text);
                    },
                  ),
                  if (state is ForgotPasswordLoadingState)
                    Center(child: CircularProgressIndicator()),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {
          if (state is ForgotPasswordSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: AppColors.blue,
                content: Text('Verification code sent successfully', style: AppStyles.font16White500),
              ),
            );
            Navigator.pushNamed(context, Routes.passwordVerification, arguments: emailController.text);
          } else if (state is ForgotPasswordErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: AppColors.red,
                content: Text(state.error, style: AppStyles.font16White500),
              ),
            );
          }
        },
      ),
    );
  }
}
