import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../data/data_repo.dart';
import '../widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function function;
  Function function2;
  AllTasksScreen(this.function, this.function2);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return tasks.isEmpty
        ? Lottie.asset('assets/animations/empty.json')
        : ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              return TaskWidget(tasks[index], function, function2);
            });
  }
}
