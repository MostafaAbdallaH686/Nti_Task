abstract class RegisterState {}

class RegisterInitState extends RegisterState {}

class RegisterLoadingState extends RegisterState {}

class RegisterErrorState extends RegisterState {
  late String error;
  RegisterErrorState(this.error);
}

class RegisterSucessState extends RegisterState {}
