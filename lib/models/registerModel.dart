class RegisterModel {
  String? name;
  String? email;
  String? phone;
  String? country;
  String? city;

  RegisterModel.fromMap(Map map) {
    name = map['name'];
    email = map['email'];
    phone = map['phone'];
    country = map['country'];
    city = map['city'];
  }
}
