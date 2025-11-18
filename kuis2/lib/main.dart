import 'dart:convert';
import 'user.dart';
// Praktikum 1: Konversi Model Dart ke JSON

void main() {
  // Buat object User
  User user = User(
    name: "Whildan",
    email: "whildan@example.com",
    age: 25,
  );

  // Model → JSON
  String jsonData = jsonEncode(user.toJson());
  print("Model ke JSON:");
  print(jsonData);

  // JSON → Model
  Map<String, dynamic> parsedJson = jsonDecode(jsonData);
  User newUser = User.fromJson(parsedJson);

  print("\nJSON ke Model:");
  print("Name: ${newUser.name}");
  print("Email: ${newUser.email}");
  print("Age: ${newUser.age}");
}
