import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_drop_down.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../cubit/profile_cubit.dart';

class ProfileForm extends StatelessWidget{
  static final formKey = GlobalKey<FormState>();
   const ProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final profileCubit = context.read<ProfileCubit>();
    return Form( key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            "Name",
            style: AppStyles.font14Black400,
          ),
          verticalSpace(6),
          AppTextFormField(
            controller: profileCubit.nameController,
            hintText: "Ex. John Doe",
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isNameValid(value)) {
                return "please enter a valid name";
              }
            },
          ),
          verticalSpace(12),
          Text(
            "Gender",
            style: AppStyles.font14Black400,
          ),
          verticalSpace(6),
            AppDropDown<String>( // Modify this line
              items: const ["Male", "Female"],
              onChanged: (value) {
              //  print(value);
                profileCubit.genderController.text = value ?? '';
              },
            ),
        ],));
  }

}