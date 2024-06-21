import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_bar.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../data/models/activate_request.dart';
import '../cubit/verification_cubit.dart';
import '../cubit/verification_states.dart';
import '../widgets/otp_form.dart';

class PasswordVerificationPage extends StatelessWidget {
  final String email;

  const PasswordVerificationPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    final activateCubit = context.read<VerificationCubit>();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBarWithCustomAvatar('', () {
        Navigator.pop(context);
      }),
      body: BlocConsumer<VerificationCubit, VerificationStates>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Verify Code", style: AppStyles.font24Black500),
                  verticalSpace(8),
                  Text(
                    "Please enter the code we just sent to email \n $email",
                    style: AppStyles.font14DarkGrey400,
                  ),
                  verticalSpace(20),
                  OtpForm(controller: activateCubit.verifyCodeController),
                  verticalSpace(20),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Didn’t receive OTP?",
                          style: AppStyles.font14DarkGrey400,
                        ),
                        verticalSpace(10),
                        TextButton(
                          onPressed: () {
                            activateCubit.forgotPassword(email);
                          },
                          child: Text(
                            "Resend Code",
                            style: AppStyles.font14Blue600,
                          ),
                        )
                      ],
                    ),
                  ),
                  verticalSpace(20),
                  AppTextButton(
                    buttonText: 'Verify',
                    onPressed: () {
                      final code = activateCubit.verifyCodeController.text;
                      activateCubit.resetPassword(
                          ActivateRequest(email: email, verificationCode: code));
                    },
                  ),
                  if (state is ActivateErrorState)
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                      child: Text(
                        state.error,
                        style: AppStyles.font14Red400,
                      ),
                    ),
                ],
              ),
            ),
          );
        },
        listener: (context, state) {
          if (state is ResetPasswordSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: AppColors.blue,
                content: Text('Account activated successfully', style: AppStyles.font16White500),
              ),
            );
            Future.delayed(const Duration(seconds: 2), () {
              Navigator.pushNamed(
                context,
                Routes.newPassword,
                arguments: {
                  'token': state.token,
                },
              );
            });
          } else if (state is ActivateErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: AppColors.red,
                content: Text(
                  state.error,
                  style: AppStyles.font16White500,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
