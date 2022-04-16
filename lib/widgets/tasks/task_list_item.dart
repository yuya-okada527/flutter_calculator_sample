import 'package:flutter/material.dart';
import 'package:flutter_calculator/widgets/tasks/delete_button.dart';

class TaskListItem extends StatelessWidget {
  final String title;
  final Function onDeleteConfirm;

  const TaskListItem({
    Key? key,
    required this.title,
    required this.onDeleteConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        trailing: DeleteButton(
          title: title,
          onDeleteConfirm: onDeleteConfirm,
        ),
      ),
    );
  }
}
