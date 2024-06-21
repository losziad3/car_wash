class AppRegex{
  static bool isEmailValid( String email){
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$'
    ).hasMatch(email);
  }
  static bool isPasswordValid( String password){
    return RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$'
    ).hasMatch(password);
  }
  static bool isPhoneValid(String phone){
    return RegExp(
      r'(010|011|012|015)[0-9]{8}$').hasMatch(phone);

  }
  static bool isNameValid(String name){
    return RegExp(
        r'^[a-zA-Z]+$').hasMatch(name);
  }

}