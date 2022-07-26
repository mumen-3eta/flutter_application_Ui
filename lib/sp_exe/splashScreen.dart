import 'package:flutter/material.dart';
import 'package:flutter_application_1/sp_exe/spHelper.dart';

class SplashScreen extends StatelessWidget {
  initSplash() async {
    await Future.delayed(const Duration(seconds: 2));
    SPhelper.sPhelper.getUser();
  }

  @override
  Widget build(BuildContext context) {
    initSplash();
    return const Scaffold(
      body: Center(
          child: FlutterLogo(
        size: 80,
      )),
    );
  }
}
