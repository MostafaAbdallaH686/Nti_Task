import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/feature/Regester/models/user_model.dart';
import 'package:projects/feature/presentation/name_screen/mange/name_state.dart';
import 'package:projects/feature/presentation/name_screen/repo/name_repo.dart';

class NameCubit extends Cubit<NameState> {
  NameCubit() : super(NameInitState());
  TextEditingController name = TextEditingController();

  static NameCubit get(context) => BlocProvider.of(context);
  final NameRepo nameRepo = NameRepo.getinstance();
  void update() async {
    emit(NameLoadingState());
    await Future.delayed(Duration(milliseconds: 1000));
    Either<String, void> response =
        nameRepo.nameRepo(UserModel(name: name.text));
    response.fold((String error) {
      emit(NameErrorState(error));
    }, (r) {
      emit(NameSucessState());
    });
  }
}
