import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:washit_project/features/authentication/register/presentation/cubit/register_states.dart';
import '../../data/models/register_request.dart';
import '../../data/repo/register_repo.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final RegisterRepo registerRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  RegisterCubit(this.registerRepo) : super(RegisterInitialState());


  void emitRegisterState() async {
    emit(RegisterLoadingState());
    try {
      final result = await registerRepo.registerUser(RegisterRequest(
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
      ));
      if(result.data?.error != null) {
        emit(RegisterErrorState(result.data?.error ?? ""));
      }else{
        emit(RegisterSuccessState());
      }
    } catch (error) {
      emit(RegisterErrorState(error.toString()));
    }
  }
}
