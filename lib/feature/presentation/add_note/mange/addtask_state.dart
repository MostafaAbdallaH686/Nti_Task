abstract class AddtaskState {}

class AddTaskInitState extends AddtaskState {}

class AddTaskLoadingState extends AddtaskState {}

class AddTaskErrorState extends AddtaskState {
  late String error;
  AddTaskErrorState(this.error);
}

class AddTaskSucessState extends AddtaskState {}
