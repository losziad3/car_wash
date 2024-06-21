import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helpers/app_regex.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/styles.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../cubit/verification_cubit.dart';

class PasswordForm extends StatefulWidget {
  const PasswordForm({super.key});

  @override
  State<PasswordForm> createState() => _PasswordFormState();
}

class _PasswordFormState extends State<PasswordForm> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  bool isObscureConfirmText = true;

  @override
  Widget build(BuildContext context) {
    final verificationCubit = context.read<VerificationCubit>();
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Password", style: AppStyles.font14Black400),
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
              child: Icon(isObscureText ? Icons.visibility_off : Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isPasswordValid(value)) {
                return "Please enter a valid password";
              }
            },
            controller: verificationCubit.passwordController,
          ),
          verticalSpace(15),
          Text("Confirm Password", style: AppStyles.font14Black400),
          verticalSpace(6),
          AppTextFormField(
            hintText: "Confirm Password",
            isObscureText: isObscureConfirmText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureConfirmText = !isObscureConfirmText;
                });
              },
              child: Icon(isObscureConfirmText ? Icons.visibility_off : Icons.visibility),
            ),
            validator: (value) {
              if (value == null || value.isEmpty || !AppRegex.isPasswordValid(value)) {
                return "Please enter a valid password";
              }
              if (value != verificationCubit.passwordController.text) {
                return "Passwords do not match";
              }
            },
            controller: verificationCubit.confirmPasswordController,
          ),
        ],
      ),
    );
  }
}

