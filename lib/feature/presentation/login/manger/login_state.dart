abstract class LoginState {}

class LoginInitState extends LoginState {}

class LoginLoadingState extends LoginState {}

class LoginErrorState extends LoginState {
  late String error;
  LoginErrorState(this.error);
}

class LoginSucessState extends LoginState {}
