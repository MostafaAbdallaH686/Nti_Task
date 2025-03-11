import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/feature/Regester/manger/register_cubit/register_state.dart';
import 'package:projects/feature/Regester/models/user_model.dart';
import 'package:projects/feature/Regester/repo/register_repo.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitState());
  static RegisterCubit get(context) => BlocProvider.of(context);
  final RegisterRepo registerRepo = RegisterRepo();
  void register(UserModel u) async {
    emit(RegisterLoadingState());
    await Future.delayed(Duration(milliseconds: 1000));
    Either<String, void> response = registerRepo.registerRepo(u);
    response.fold((String error) {
      emit(RegisterErrorState(error));
    }, (r) {
      emit(RegisterSucessState());
    });
  }
  
}
