import'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_wash/features/authentication/register/presentation/cubit/profile_states.dart';
import '../../data/models/profile_request.dart';
import '../../data/repo/profile_repo.dart';
class ProfileCubit extends Cubit<ProfileStates> {

  TextEditingController nameController = TextEditingController();
  TextEditingController genderController = TextEditingController();
final ProfileRepo profileRepo;
ProfileCubit(this.profileRepo) : super(ProfileInitial());

  Future<void> completeProfile(ProfileRequest profileRequest) async {
    emit(ProfileLoadingState());
    try {
      final result = await profileRepo.completeProfile(profileRequest);
      emit(ProfileSuccessState());
    } catch (error) {
      emit(ProfileErrorState(error.toString()));
    }
  }
}