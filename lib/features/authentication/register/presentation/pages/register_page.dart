import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_wash/core/routing/routes.dart';
import 'package:car_wash/core/theming/colors.dart';
import 'package:car_wash/core/theming/styles.dart';
import 'package:car_wash/core/widgets/app_bar.dart';
import 'package:car_wash/features/authentication/register/presentation/widgets/line_text_line.dart';
import 'package:car_wash/features/authentication/register/presentation/widgets/two_circle_avatar.dart';
import 'package:car_wash/features/layout/presentation/layout.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../cubit/register_cubit.dart';
import '../cubit/register_states.dart';
import '../widgets/check_box.dart';
import '../widgets/register_fom.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final registerCubit = context.read<RegisterCubit>();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBarWithCustomAvatar('', () {}),
      body: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is RegisterSuccessState) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Sign Up Successful"),
                content: const SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text("Your account has been created successfully."),
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.verification,
                          arguments: registerCubit.emailController.text);
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: AppColors.white,
                    ),
                    child: const Text('Continue'),
                  ),
                ],
              ),
            );
          } else if (state is RegisterErrorState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.red,
                content: Text(state.error),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is RegisterLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Create Account", style: AppStyles.font24Black500),
                  verticalSpace(8),
                  Text(
                      "Fill your information below or register with \n your social account",
                      style: AppStyles.font14DarkGrey400),
                  verticalSpace(20),
                  Column(
                    children: [
                      const RegisterForm(),
                      verticalSpace(8),
                      const CheckBox(),
                      verticalSpace(12),
                      AppTextButton(
                        buttonText: "Sign Up",
                        onPressed: () {
                          // validateThenDoRegister(context);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Layout(),));
                        },
                      ),
                      verticalSpace(12),
                      LineTextLine(),
                      verticalSpace(12),
                      const TwoCircleAvatars(),
                      verticalSpace(12),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account? "),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              "Sign In",
                              style: AppStyles.font14Blue600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void validateThenDoRegister(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitRegisterState();
    }
  }
}
