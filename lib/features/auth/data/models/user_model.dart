
class UserModel 
{
  late String name;
  int? age;
  late String email;
  late String password;

  UserModel({
    required this.name, 
    required this.email, 
    required this.password, 
    this.age, 
    });
}