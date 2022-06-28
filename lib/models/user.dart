class User {
  String? name;
  String? image;

  User.fromJason(Map<String, dynamic> data) {
    name = data['name'];
    image = data['image'];
  }
}
