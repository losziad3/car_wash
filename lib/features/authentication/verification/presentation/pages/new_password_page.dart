import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_bar.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../cubit/verification_cubit.dart';
import '../cubit/verification_states.dart';  // Import the states
import '../widgets/password_form.dart';
import 'package:washit_project/features/authentication/verification/data/models/new_password_request.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final verificationCubit = context.read<VerificationCubit>();
    final arguments = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
    final token = arguments?['token'];

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBarWithCustomAvatar("", () {
        Navigator.pop(context);
      }),
      body: BlocConsumer<VerificationCubit, VerificationStates>(
        listener: (context, state) {
          if (state is ActivateSuccessState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: AppColors.blue,
                content: Text('Password updated successfully', style: AppStyles.font16White500),
              ),
            );
          } else if (state is ActivateErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: AppColors.red,
                content: Text(state.error, style: AppStyles.font16White500),
              ),
            );
          }
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(10),
                  Text("New Password", style: AppStyles.font24Black500),
                  verticalSpace(8),
                  Text(
                    "Your new password must be different from previously used password",
                    style: AppStyles.font14DarkGrey400,
                  ),
                  verticalSpace(25),
                  const PasswordForm(),
                  verticalSpace(30),
                  AppTextButton(
                    buttonText: "Create New Password",
                    onPressed: () {
                      if (token != null) {
                        verificationCubit.newPassword(
                          NewPasswordRequest(
                            newPassword: verificationCubit.passwordController.text,
                            token: token,
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: AppColors.red,
                            content: Text('Token is missing!', style: AppStyles.font16White500),
                          ),
                        );
                      }
                    },
                  ),
                  if (state is ActivateLoadingState)
                    Center(child: CircularProgressIndicator()),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
