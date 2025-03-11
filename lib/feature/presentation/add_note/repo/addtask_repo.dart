import 'package:dartz/dartz.dart';
import 'package:projects/feature/presentation/add_note/model/addtask_model.dart';

class AddtaskRepo {
  AddtaskModel? addtaskModel;
  AddtaskRepo._internal();
  static AddtaskRepo _instance = AddtaskRepo._internal();
  static getinstance() {
    return _instance;
  }

  Either<String, void> addTaskRepo<String>(AddtaskModel u) {
    try {
      addtaskModel = u;
      return right(null);
    } catch (e) {
      return left(e.toString() as String);
    }
  }
}
