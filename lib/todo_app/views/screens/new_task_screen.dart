import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo_app/data/db_helper.dart';

import '../../data/data_repo.dart';
import '../../models/task_model.dart';

class NewTaskScreen extends StatelessWidget {
  Function function;
  NewTaskScreen(this.function);
  String content = "";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              onChanged: (v) {
                content = v;
              },
            ),
            ElevatedButton(
                onPressed: () {
                  DBhelper.dbhelper.inserrNewTask(TaskModel(title: content));
                  //tasks.add(TaskModel(title: content));
                  function();
                  Navigator.pop(context);
                },
                child: Text('Add New Task'))
          ],
        ));
  }
}
