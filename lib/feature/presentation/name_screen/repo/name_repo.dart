import 'package:dartz/dartz.dart';
import 'package:projects/feature/Regester/models/user_model.dart';

class NameRepo {
  UserModel? userModel;
  NameRepo._internal();
  static NameRepo _instance = NameRepo._internal();
  static getinstance() {
    return _instance;
  }

  Either<String, void> nameRepo<String>(UserModel u) {
    try {
      userModel = u;
      return right(null);
    } catch (e) {
      return left(e.toString() as String);
    }
  }
}
