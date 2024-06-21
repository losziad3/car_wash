import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:washit_project/core/theming/styles.dart';
import 'package:washit_project/core/widgets/app_text_form_field.dart';
import 'package:washit_project/features/authentication/register/presentation/cubit/register_cubit.dart';
import 'package:washit_project/features/authentication/register/presentation/widgets/intl_phone_filed.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';

class RegisterForm extends StatefulWidget {

   const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<RegisterCubit>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(
              "Email",
              style: AppStyles.font14Black400,
            ),
            verticalSpace(6),
            AppTextFormField(
              hintText: "example@gmail.com",
              validator: (value) {
                if (value == null || value.isEmpty || !AppRegex.isEmailValid(value)) {
                  return "please enter a valid email";
                }
              },
              controller: context.read<RegisterCubit>().emailController,
            ),
            verticalSpace(12),
             Text(
              "Phone Number",
              style: AppStyles.font14Black400,
            ),
            verticalSpace(6),
           // const AppIntlPhoneField(),
            AppTextFormField(hintText: "Phone Number", validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isPhoneValid(value)) {
                return "please enter a valid phone number";
              }
            },
              controller: context.read<RegisterCubit>().phoneController,),
            verticalSpace(12),
             Text(
              "Password",
              style: AppStyles.font14Black400,
            ),
            verticalSpace(6),
            AppTextFormField(
              hintText: "Password",
              isObscureText: isObscureText,
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isObscureText = !isObscureText;
                    });
                  },
                  child: Icon(isObscureText
                      ? Icons.visibility_off
                      : Icons.visibility)),
              validator: (value ) {
                if ( value== null || value.isEmpty || !AppRegex.isPasswordValid(value)) {
                  return "please enter a valid password";
                }
              },
              controller: context.read<RegisterCubit>().passwordController,
            ),
          ],
        ));
  }
}
