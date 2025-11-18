class User {
  String name;
  String email;
  int age;

  User({
    required this.name,
    required this.email,
    required this.age,
  });

  // JSON → Model
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      age: json['age'],
    );
  }

  // Model → JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'age': age,
    };
  }
}
