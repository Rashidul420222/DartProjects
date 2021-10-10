// ignore_for_file: unnecessary_this

import 'dart:convert';

class User {
  String name;
  int ang;
  User(this.name, this.ang);

  factory User.fromJson(dynamic json) {
    return User(json['name'] as String, json['age'] as int);
  }

  @override
  String toString() {
    return '{ ${this.name}, ${this.ang}}';
  }
}

void main() {
  String objText = '{"name" : "Rashidul", "age" : 24}';

  User user = User.fromJson(jsonDecode(objText));

  print(user);
}
