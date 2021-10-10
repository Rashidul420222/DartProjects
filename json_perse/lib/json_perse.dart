// import 'dart:convert';

// class User {
//   String name;
//   int age;

//   User(this.name, this.age);

//   Map toJson() => {'name': name, 'age': age};
// }
// class Tutorial {
//   String title;
//   String description;
//   User author;

//   Tutorial(this.title, this.description, [this.author]);

//   Map toJson() {
//     Map author =
//         this.author != null ? this.author.toJson() : null;

//     return {'title': title, 'description': description, 'author': author};
//   }
// }
// void main() {
//   User user = User('Rashidul', 32);
//   String jsonUser = jsonEncode(user);
//   print(jsonUser);
// }
