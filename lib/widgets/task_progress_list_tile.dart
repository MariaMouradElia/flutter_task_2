import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class TaskProgressListTile extends StatelessWidget {
  final String taskName ;
  final String num_of_tasks;
  final String taskPercent;
  final double percentage;

  const TaskProgressListTile({
    super.key,
    required this.taskName,
    required this.num_of_tasks,
    required this.taskPercent,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: Color(0xff313131),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 10,
            right: 10,
            bottom: 10,
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( taskName, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),),
                  SizedBox(height: 5),
                  Text(num_of_tasks,
                    style: TextStyle(
                      color: Colors.grey,),
                  ),
                ],
              ),
              Spacer(),
              CircularPercentIndicator(
                progressColor: Colors.blue,
                radius: 24,
                center: Text(taskPercent),
                percent: percentage,
                lineWidth: 5.0,
                backgroundColor: Color(0xff1e1e1e),), // arcBackgroundColor: Colors.cyan,// percent = 25.0,// lineWidth = 2.0,),
              SizedBox(width: 8),
              Icon(Icons.more_vert),
          ],
        ),
        )
    );
  }
}
