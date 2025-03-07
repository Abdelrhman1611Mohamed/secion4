import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/features/Regester/data/models/user_model.dart';
import 'package:flutter_application_1/features/Regester/data/repo/register_repo.dart';
import 'package:flutter_application_1/features/Regester/manager/register_cubit/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState>
{
  RegisterCubit(): super(RegisterInitState());
  static RegisterCubit get(context) => BlocProvider.of(context);

  final RegisterRepo registerRepo = RegisterRepo();
  void register (UserModel u)async
  {
    emit(RegisterLoadingState());
    await Future.delayed(Duration(milliseconds: 1000));
    Either<String, void> response = registerRepo.register(u);

    response.fold(
      (String error)
      {
        emit(RegisterErrortate(error));
      }, 
      (r)
      {
        emit(RegisterSuccessState());
      });



  }
}