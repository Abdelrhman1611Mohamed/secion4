

import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/features/auth/data/models/user_model.dart';

class AuthRepo 
{
  List<UserModel> users=[];

  Either<String, void> register({required UserModel user})
  {
    try {
      users.add(user);
      return right(0);
    } catch (e) {
      return left(e.toString());
    }
  }

  bool login({required String email, required String password})
  {
    return users.contains(
      UserModel(name: 'ahmed',
       email: email, password: password,
       age: 20
       ));
  }
}