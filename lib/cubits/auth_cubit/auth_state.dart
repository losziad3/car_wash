abstract class Authstate{}
class AuthIntialstate extends Authstate{}

class RegisterLoadingstate extends Authstate{}
class Registersucessstate extends Authstate{}
class Registerfaliurestate extends Authstate{
  // String Message;
  // Registerfaliurestate({required this.Message});
}

class LoginLoadingstate extends Authstate{}
class LoginSuccessstate extends Authstate{}
class LoginFaliurestate extends Authstate{}

class VerifyLoadingstate extends Authstate{}
class Verifyuccessstate extends Authstate{}
class Verifyaliurestate extends Authstate{}