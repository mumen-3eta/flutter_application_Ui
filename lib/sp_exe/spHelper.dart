import 'dart:convert';

import 'package:flutter_application_1/instgram/ViewInfoUi.dart';
import 'package:flutter_application_1/instgram/registerUi.dart';
import 'package:flutter_application_1/models/registerModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../instgram/NavigationConstants.dart';

class SPhelper {
  SharedPreferences? sp;

  SPhelper._();
  static SPhelper sPhelper = SPhelper._();

  initSP() async {
    sp = await SharedPreferences.getInstance();
  }

  saveNewUser(
      {required String name,
      required String email,
      required String phone,
      required String country,
      required String city}) async {
    Map<String, dynamic> map = {
      "name": name,
      "email": email,
      "phone": phone,
      "country": country,
      "city": city
    };
    String userData = json.encode(map);
    bool x = await sp!.setString('user', userData);
    if (x) {
      RegisterModel user = RegisterModel.fromMap(map);
      NavigationConstants.navigateWithReplacementToWidget(
          ViewInfoUi(user: user));
    }
  }

  getUser() {
    String? user = sp!.getString('user');
    if (user == null) {
      NavigationConstants.navigateWithReplacementToWidget(RegisterUi());
    } else {
      Map map = json.decode(user);
      RegisterModel userModel = RegisterModel.fromMap(map);
      NavigationConstants.navigateWithReplacementToWidget(
          ViewInfoUi(user: userModel));
    }
  }

  deleteUser() {
    sp!.remove('user');
    NavigationConstants.navigateWithReplacementToWidget(RegisterUi());
  }
}
