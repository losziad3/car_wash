import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:car_wash/core/helpers/spacing.dart';
import 'package:car_wash/core/widgets/app_bar.dart';
import 'package:car_wash/features/authentication/register/presentation/cubit/profile_cubit.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_text_button.dart';
import '../../data/models/profile_request.dart';
import '../cubit/profile_states.dart';
import '../widgets/profile_form.dart';

class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfileForm profileForm = ProfileForm();
    final profileCubit = BlocProvider.of<ProfileCubit>(context);
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBarWithTextButton("", () {}),
      body: BlocConsumer<ProfileCubit, ProfileStates>(
        listener: (context, state) {
          if (state is ProfileSuccessState) {
            Navigator.pushNamed(context, Routes.login);
          }
        },
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Complete Your Profile",
                    style: AppStyles.font24Black500,
                  ),
                  verticalSpace(8),
                  Text(
                    "Don’t worry, only you can see your personal \n data. No one else will be able to see it.",
                    style: AppStyles.font14DarkGrey400,
                  ),
                  verticalSpace(15),
                   const ProfileForm(),
                  verticalSpace(40),
                  AppTextButton(
                      buttonText: "Complete Profile", onPressed: () {
                    profileCubit.completeProfile(
                      ProfileRequest(
                        userName: profileCubit.nameController.text,
                        gender: profileCubit.genderController.text,
                     //   latitude: 0,
                     //   longitude: 0,
                      )
                    );
                  }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
