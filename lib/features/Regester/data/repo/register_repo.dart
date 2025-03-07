import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/features/Regester/data/models/user_model.dart';

class RegisterRepo
{
  UserModel? userModel;

  Either<String, void> register(UserModel u)
  {
    try
    {
      if(u.age <0)
      {
        return left('Age Must be More than 0');
      }
      userModel = u;
      return right(null);
    }
    catch(e)
    {
      return left(e.toString());
    }
  }

}