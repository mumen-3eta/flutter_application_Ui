import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/registerModel.dart';

import '../sp_exe/spHelper.dart';

class ViewInfoUi extends StatelessWidget {
  RegisterModel user;
  ViewInfoUi({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                Text(user.name!),
                Text(user.email!),
                Text(user.phone!),
                Text(user.country!),
                Text(user.city!),
                ElevatedButton(
                    onPressed: () {
                      SPhelper.sPhelper.deleteUser();
                    },
                    child: const Text('Sign Out'))
              ])),
        ));
  }
}
