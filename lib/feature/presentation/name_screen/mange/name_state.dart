abstract class NameState {}

class NameInitState extends NameState {}

class NameLoadingState extends NameState {}

class NameErrorState extends NameState {
  late String error;
  NameErrorState(this.error);
}

class NameSucessState extends NameState {}
