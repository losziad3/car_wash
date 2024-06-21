abstract  class ProfileStates{}

class ProfileInitial extends ProfileStates{}

class ProfileLoadingState extends ProfileStates{}

class ProfileSuccessState extends ProfileStates{
}

class ProfileErrorState extends ProfileStates{

  final String error;
  ProfileErrorState(this.error);
}