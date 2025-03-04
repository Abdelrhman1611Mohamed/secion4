import 'package:flutter_application_1/features/home/manager/home_cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitState());

  static HomeCubit get(context) => BlocProvider.of(context);

  bool mySwitch = true;
  bool myCheckBox = true;

  void onChangeSwitch(bool value) {
    mySwitch = value; // init
    emit(HomeChangeSwitchState()); //
  }

  void onChangeCheckBox(bool? value) {
    myCheckBox = value ?? true; // init
    emit(HomeChangeCheckBoxState()); //
  }

  
}
