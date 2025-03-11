import 'package:dartz/dartz.dart';
import 'package:projects/feature/presentation/login/model/user_model_login.dart';

class LoginRepo {
  LoginRepo._internal();
  static LoginRepo _instance = LoginRepo._internal();
  UserModelLogin? userModelLogin;
  static getinstance() {
    return _instance;
  }

  Either<String, void> loginRepo<String>(UserModelLogin u) {
    try {
      userModelLogin = u;
      return right(null);
    } catch (e) {
      return left(e.toString() as String);
    }
  }
}
