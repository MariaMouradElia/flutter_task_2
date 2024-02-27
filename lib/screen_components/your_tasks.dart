import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session_3_todo_task/screens/create_task_screen.dart';
import '../widgets/task_progress_list_tile.dart';
class YourTasks extends StatelessWidget {
  const YourTasks ({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
                "Your Tasks",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Expanded(
              child: ElevatedButton(
                 onPressed: (){
                   Navigator.pushNamed(context, '/createtask');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff004a77),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                ),
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/task_plus.svg'),
                  SizedBox(width: 5),
                  const Text('Add',
                    style: TextStyle(
                      color: Colors.white,
                  ),
                  ),
                ],
                ),
              ),
            ),
            // AddButton
          ],
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TaskProgressListTile(taskName: "Study for finals.", num_of_tasks: "4 tasks", taskPercent: "25%", percentage: 0.25,),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TaskProgressListTile(taskName: "Clean the kitchen.", num_of_tasks: "2 tasks", taskPercent: "50%", percentage: 0.50,),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TaskProgressListTile(taskName: "Business Tasks", num_of_tasks: "17 tasks", taskPercent: "82%", percentage: 0.82,),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TaskProgressListTile(taskName: "Study for finals.", num_of_tasks: "8 tasks", taskPercent: "63%", percentage: 0.63,),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TaskProgressListTile(taskName: "Study for finals.", num_of_tasks: "4 tasks", taskPercent: "25%", percentage: 0.25,),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TaskProgressListTile(taskName: "Clean the kitchen.", num_of_tasks: "2 tasks", taskPercent: "50%", percentage: 0.50,),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TaskProgressListTile(taskName: "Business Tasks", num_of_tasks: "17 tasks", taskPercent: "82%", percentage: 0.82,),
              ),
              TaskProgressListTile(taskName: "Study for finals.", num_of_tasks: "24 tasks", taskPercent: "63%", percentage: 0.63,),
            ],
          ),
        ),
      ],
    );
  }
}
