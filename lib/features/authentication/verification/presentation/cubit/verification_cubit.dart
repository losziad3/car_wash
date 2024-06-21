import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/activate_request.dart';
import '../../data/models/new_password_request.dart';
import '../../data/repo/activate_repo.dart';
import '../../data/repo/password_repo.dart';
import 'verification_states.dart';
import 'package:flutter/material.dart';

class VerificationCubit extends Cubit<VerificationStates> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final ActivateRepo activateRepo;
  final PasswordRepo passwordRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController verifyCodeController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();

  VerificationCubit(this.activateRepo, this.passwordRepo)
      : super(VerificationInitialState());

  Future<void> activate(ActivateRequest activateRequest) async {
    emit(ActivateLoadingState());
    try {
      final result = await activateRepo.activate(activateRequest);
      if (result.data?.statusCode == 200) {
        emit(ActivateSuccessState());
      } else if (result.data?.statusCode == 400) {
        emit(ActivateErrorState(result.data?.message ?? ''));
      }
    } catch (error) {
      emit(ActivateErrorState(error.toString()));
    }
  }

  Future<void> forgotPassword(String email) async {
    emit(ForgotPasswordLoadingState());
    try {
      final result = await passwordRepo.forgotPassword(email);
      emit(ForgotPasswordSuccessState());
    } catch (error) {
      emit(ForgotPasswordErrorState(error.toString()));
    }
  }
  Future<void> resetPassword(ActivateRequest activateRequest) async {
    emit(ActivateLoadingState());
    try {
      final result = await passwordRepo.resetPassword(activateRequest);
      if (result.data?.statusCode == 200) {
        emit(ResetPasswordSuccessState(result.data?.token ?? ''));
      } else if (result.data?.statusCode == 400) {
        emit(ActivateErrorState(result.data?.message ?? ''));
      }
    } catch (error) {
      emit(ActivateErrorState(error.toString()));
    }
  }
  Future<void> newPassword(NewPasswordRequest newPasswordRequest) async {
    emit(ActivateLoadingState());
    try {
      final result = await passwordRepo.newPassword(newPasswordRequest);
      if (result.data?.status == 200) {
        emit(NewPasswordSuccessState());
      } else if (result.data?.status == 400) {
        emit(ActivateErrorState(result.data?.message ?? ''));
      }
    } catch (error) {
      emit(ActivateErrorState(error.toString()));
    }
  }
}
