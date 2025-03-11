import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projects/feature/presentation/home_screen/repo/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeIntialState());
  static HomeCubit get(context) => BlocProvider.of(context);
  bool mySwitch = true;
  bool myCheckBox = true;
  void ChangeCheckBox(bool? value) {
    myCheckBox = value ?? myCheckBox;
    emit(HomeCheckBoxState());
  }

  void ChangeSwitch(bool value) {
    mySwitch = value;
    emit(HomeSwitchState());
  }
}
