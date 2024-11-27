import 'dart:ffi';

class UserModel {
  String? name;
  String? email;
  String? location;
  Uint8? image;
  UserModel({this.email, this.image, this.location, this.name});
}
