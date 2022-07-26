import 'package:flutter/material.dart';
import 'package:flutter_application_1/facebook/facebookUi.dart';
import 'package:flutter_application_1/facebook/facebookalbum.dart';
import 'package:flutter_application_1/firstUi.dart';
import 'package:flutter_application_1/instgram/NavigationConstants.dart';
import 'package:flutter_application_1/instgram/ViewInfoUi.dart';
import 'package:flutter_application_1/sp_exe/homePage.dart';
import 'package:flutter_application_1/sp_exe/spHelper.dart';

import 'instgram/instagramUi.dart';
import 'instgram/registerUi.dart';
import 'sp_exe/splashScreen.dart';
import 'todo_app/data/db_helper.dart';
import 'todo_app/views/screens/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SPhelper.sPhelper.initSP();
  await DBhelper.dbhelper.initDatabase();

  runApp(MaterialApp(
    navigatorKey: NavigationConstants.navkey,
    home: MainTodoPage(),
  ));
}
