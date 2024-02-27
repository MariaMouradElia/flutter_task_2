import 'package:flutter/material.dart';
import 'package:session_3_todo_task/constants/sentences.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:session_3_todo_task/widgets/task_progress_tile.dart';
class MissionOfTheDayWidget extends StatelessWidget {
  const MissionOfTheDayWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        color: Color(0xff313131),

      ),
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(Sentences.missionName,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                SvgPicture.asset('assets/pin.svg'),
              ],
            ),
            const Divider(
              color: Color(0xffb7b7b7),
              thickness: 1,
              endIndent: 100,
            ),
             Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TaskProgressTile(
                      finishedTask: true,
                      subtask_name: "Review lectures.",
                    ),
                    SizedBox(height: 10),
                    TaskProgressTile(
                      finishedTask: false,
                      subtask_name: "Review personal notes.",
                    ),
                    SizedBox(height: 10),
                    TaskProgressTile(
                      finishedTask: false,
                      subtask_name: "solve past exams.",
                    ),
                    SizedBox(height: 10),
                    TaskProgressTile(
                      finishedTask: false,
                      subtask_name: "Make short summaries",
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    SizedBox(height: 20),
                    CircularPercentIndicator(
                      radius: 34.0,
                      lineWidth: 7.0,
                      percent: 0.25,
                      center: const Text("25%"),
                      progressColor: Colors.blue,
                      backgroundColor: const Color(0xff1e1e1e),
                    ),
                  ],
                ),
              ],
             ),
          ],
        ),
      ),
    );
  }
}