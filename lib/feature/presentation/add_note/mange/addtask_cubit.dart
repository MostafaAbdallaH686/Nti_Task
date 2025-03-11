import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/feature/presentation/add_note/mange/addtask_state.dart';
import 'package:projects/feature/presentation/add_note/model/addtask_model.dart';
import 'package:projects/feature/presentation/add_note/repo/addtask_repo.dart';

class AddtaskCubit extends Cubit<AddtaskState> {
  AddtaskCubit() : super(AddTaskInitState());
  static AddtaskCubit get(context) => BlocProvider.of(context);
  final AddtaskRepo addtaskRepo = AddtaskRepo.getinstance();
  void addtask(AddtaskModel u) async {
    emit(AddTaskLoadingState());
    await Future.delayed(Duration(milliseconds: 1000));
    Either<String, void> response = addtaskRepo.addTaskRepo(u);
    response.fold((String error) {
      emit(AddTaskErrorState(error));
    }, (r) {
      emit(AddTaskSucessState());
    });
  }
}
