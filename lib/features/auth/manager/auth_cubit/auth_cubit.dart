import 'package:flutter_application_1/features/auth/data/models/user_model.dart';
import 'package:flutter_application_1/features/auth/data/repo/auth_repo.dart';
import 'package:flutter_application_1/features/auth/manager/auth_cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState>
{
  AuthCubit(): super(AuthInitState());

  static AuthCubit get(context) => BlocProvider.of(context);
  AuthRepo authRepo = AuthRepo();

  void register({required UserModel user})
  {
    emit(AuthRegisterLoadingState());
    var response = authRepo.register(user: user);
    response.fold((String error)
    { 
        emit(AuthRegisterErrorState());
    }, 
    (r)
    {
        emit(AuthRegisterSuccessState());
    });
  }

}