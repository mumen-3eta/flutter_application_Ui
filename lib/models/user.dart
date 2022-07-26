class User {
  String? name;
  String? image;

  User(this.name,
      {this.image =
          'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'});

  User.fromJason(Map<String, dynamic> data) {
    name = data['name'];
    image = data['image'];
  }
}
