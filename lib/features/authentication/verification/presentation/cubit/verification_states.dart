abstract class VerificationStates {}

class VerificationInitialState extends VerificationStates {}

class ActivateLoadingState extends VerificationStates {}

class ActivateSuccessState extends VerificationStates {
}
class ActivateErrorState extends VerificationStates {
  final String error;
  ActivateErrorState(this.error);
}
class ForgotPasswordLoadingState extends VerificationStates {}
class ForgotPasswordSuccessState extends VerificationStates {}
class ForgotPasswordErrorState extends VerificationStates {
  final String error;
  ForgotPasswordErrorState(this.error);
}
class NewPasswordLoadingState extends VerificationStates {}
class NewPasswordSuccessState extends VerificationStates {}
class NewPasswordErrorState extends VerificationStates {
  final String error;
  NewPasswordErrorState(this.error);
}
class ResetPasswordSuccessState extends VerificationStates {
  final String token;
  ResetPasswordSuccessState(this.token);
}
