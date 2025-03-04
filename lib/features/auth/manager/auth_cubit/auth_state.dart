abstract class AuthState {}

class AuthInitState extends AuthState{}

class AuthRegisterLoadingState extends AuthState{}
class AuthRegisterSuccessState extends AuthState{}
class AuthRegisterErrorState extends AuthState{}

class AuthLoginLoadingState extends AuthState{}
class AuthLoginSuccessState extends AuthState{}
class AuthLoginErrorState extends AuthState{}
