// ignore_for_file: unnecessary_this

import 'dart:convert';

class User {
  String name;
  int age;
  User(this.name, this.age);

  factory User.fromJson(dynamic json) {
    return User(json["name"], json["age"]);
  }
  @override
  String toString() {
    return '{ ${this.name}, ${this.age}}';
  }
}

class Tutorial {
  String title;
  String description;
  User author;

  Tutorial(this.title, this.description, this.author);

  factory Tutorial.fromJson(dynamic json) {
    return Tutorial(
        json["title"], json["description"], User.fromJson(json['author']));
  }

  @override
  String toString() {
    return '{ ${this.title}, ${this.description}, ${this.author}}';
  }
}

void main() {
  String objNested =
      '{"title": "Dart Tutorial", "description": "Way to parse Json", "author": {"name": "bezkoder", "age": 30}}';

  Tutorial tutorial = Tutorial.fromJson(jsonDecode(objNested));

  print(tutorial);
}
