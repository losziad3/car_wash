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

class VerificationPage extends StatelessWidget {
  final String email;

  const VerificationPage({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VerificationCubit, VerificationStates>(
      listener: (context, state) {
        if (state is ActivateSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: AppColors.white,
              content: Text('Account activated successfully'),
            ),
          );
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushNamed(context, Routes.completeProfile);
          });
        }
        if (state is ActivateErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: AppColors.red,
              content: Text(
                state.error,
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        VerificationCubit verificationCubit = BlocProvider.of(context);
        return Scaffold(
          backgroundColor: AppColors.white,
          appBar: appBarWithCustomAvatar('', () {
            Navigator.pop(context);
          }),
          body: Padding(
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
                  OtpForm(controller: verificationCubit.verifyCodeController),
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
                            verificationCubit.forgotPassword(email);
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
                      final code = verificationCubit.verifyCodeController.text;
                      verificationCubit.activate(ActivateRequest(
                          email: email, verificationCode: code));
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
          ),
        );
      },
    );
  }
}
