class UserModel {
  String name;
  String? email;
  String? password;
  int? age;
  UserModel({
    required this.name,
    this.email,
    this.password,
    this.age,
  });
}
