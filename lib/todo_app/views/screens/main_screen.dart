import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo_app/data/db_helper.dart';

import '../../data/data_repo.dart';
import '../../models/task_model.dart';
import 'all_tasks_screen.dart';
import 'completed_tasks_screen.dart';
import 'incomplete_tasks_screen.dart';
import 'new_task_screen.dart';

class MainTodoPage extends StatefulWidget {
  @override
  State<MainTodoPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainTodoPage>
    with SingleTickerProviderStateMixin {
  getAllTasks() async {
    tasks = await DBhelper.dbhelper.selectAllTasks();
    setState(() {});
  }

  changeTaskStatus(TaskModel taskModel) {
    int index = tasks.indexOf(taskModel);
    tasks[index].isComplete = !tasks[index].isComplete;
    DBhelper.dbhelper.updateOneTask(taskModel);
    setState(() {});
  }

  removeTask(TaskModel taskModel) {
    tasks.remove(taskModel);
    DBhelper.dbhelper.deleteOneTask(taskModel.id!);
    setState(() {});
  }

  setStateAfterAddNewTask() {
    getAllTasks();
    setState(() {});
  }

  TabController? tabController;
  initTabBar() {
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initTabBar();
    getAllTasks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo app'),
        bottom: TabBar(controller: tabController!, tabs: const [
          Tab(
            icon: Icon(Icons.list),
          ),
          Tab(
            icon: Icon(Icons.done),
          ),
          Tab(
            icon: Icon(Icons.cancel),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add_rounded,
          color: Colors.white,
          size: 50,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) =>
                      NewTaskScreen(setStateAfterAddNewTask))));
        },
      ),
      body: TabBarView(controller: tabController!, children: [
        AllTasksScreen(changeTaskStatus, removeTask),
        CompleteTasksScreen(changeTaskStatus, removeTask),
        InCompleteTasksScreen(changeTaskStatus, removeTask)
      ]),
    );
  }
}
