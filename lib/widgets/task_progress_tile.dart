import 'package:flutter/material.dart';

class TaskProgressTile extends StatelessWidget {
  final bool finishedTask;
  final String subtask_name;

  const TaskProgressTile({
    super.key,
    this.finishedTask = false,
    required this.subtask_name,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _greenIconOrNot(finishedTask),
        SizedBox(width: 8),
        Text(subtask_name),
      ],
    );
  }

  Icon _greenIconOrNot(bool finishedTask){
    if (finishedTask){
      return Icon(
        Icons.check_circle_outline_outlined,
        size: 20,
        weight: 2.0,
        color: Colors.green,
      );
    }
    return Icon(
      Icons.circle_outlined,
      size: 20,
      weight: 2.0,
    );
  }
}
