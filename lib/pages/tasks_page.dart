import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/task_list_item.dart';

import 'task_add_page.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final List<String> _taskList = [];

  @override
  void initState() {
    super.initState();
    // ignore: todo
    // TODO: implements user preferences
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tasks"),
      ),
      body: _taskList.isNotEmpty
          ? ListView.builder(
              itemCount: _taskList.length,
              itemBuilder: (context, index) {
                return TaskListItem(
                  title: _taskList[index],
                  onDeleteConfirm: () {
                    setState(() {
                      _taskList.removeAt(index);
                    });
                  },
                );
              },
            )
          : const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "タスクがありません。",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black54,
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          final newTask = await Navigator.of(context).push<String>(
            MaterialPageRoute(builder: (context) {
              return const TaskAddPage();
            }),
          );
          if (newTask != null) {
            setState(
              () {
                _taskList.add(newTask);
              },
            );
          }
        },
      ),
    );
  }
}
