import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  final String title;
  final Function onDeleteConfirm;

  const DeleteButton({
    Key? key,
    required this.title,
    required this.onDeleteConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.delete,
        color: Colors.redAccent,
      ),
      onPressed: () async {
        var isConfirmed = await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("確認"),
              content: Text("「$title」を削除します。"),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text("キャンセル"),
                  onPressed: () {
                    return Navigator.of(context).pop(false);
                  },
                ),
                ElevatedButton(
                  child: const Text(
                    "確認",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    return Navigator.of(context).pop(true);
                  },
                ),
              ],
            );
          },
        );
        if (isConfirmed != null && isConfirmed) {
          onDeleteConfirm();
        }
      },
    );
  }
}
