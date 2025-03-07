abstract class RegisterState{}

class RegisterInitState extends RegisterState{}

class RegisterLoadingState extends RegisterState{}
class RegisterSuccessState extends RegisterState{}
class RegisterErrortate extends RegisterState
{
  final String error;
  RegisterErrortate(this.error);
}