import 'package:flutter_calculator/utils/shared_preferences_utils.dart';

class TaskRepository {
  final String _keyNameTasks = "tasks";

  Future<List<String>> fetchTaskList() async {
    return await SharedPreferencesUtils.getStringList(_keyNameTasks);
  }

  Future<void> addTask(String task) async {
    List<String> taskList =
        await SharedPreferencesUtils.getStringList(_keyNameTasks);
    taskList.add(task);
    await SharedPreferencesUtils.setStringList(_keyNameTasks, taskList);
  }

  Future<void> saveTaskList(List<String> taskList) async {
    await SharedPreferencesUtils.setStringList(_keyNameTasks, taskList);
  }
}
