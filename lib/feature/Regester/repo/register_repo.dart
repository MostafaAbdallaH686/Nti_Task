import 'package:projects/feature/Regester/models/user_model.dart';
import 'package:dartz/dartz.dart';

class RegisterRepo {
  UserModel? userModel;
  Either<String, void> registerRepo<String>(UserModel u) {
    try {
      if ((u.age ?? -1) < 0) {
        return left("Age must be more than 0" as String);
      }
      userModel = u;
      return right(null);
    } catch (e) {
      return left(e.toString() as String);
    }
  }

  Either<String, UserModel> login(
      {required String email, required String password}) {
    try {
      if (userModel != null) {
        throw Exception('Register First');
      }
      if (userModel!.email == email && userModel!.password == password) {
        return right(userModel!);
      } else {
        throw Exception('Wrong password or Email');
      }
    } catch (e) {
      return left(e.toString() as String);
    }
  }
}
