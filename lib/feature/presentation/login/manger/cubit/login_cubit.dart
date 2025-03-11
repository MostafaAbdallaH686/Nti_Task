import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/feature/presentation/login/manger/login_state.dart';
import 'package:projects/feature/presentation/login/model/user_model_login.dart';
import 'package:projects/feature/presentation/login/repo/login_repo.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitState());
  static LoginCubit get(context) => BlocProvider.of(context);
  final LoginRepo loginRepo = LoginRepo.getinstance();
  void login(UserModelLogin u) async {
    emit(LoginLoadingState());
    await Future.delayed(Duration(milliseconds: 1000));
    Either<String, void> response = loginRepo.loginRepo(u);
    response.fold((String error) {
      emit(LoginErrorState(error));
    }, (r) {
      emit(LoginSucessState());
    });
  }
}
