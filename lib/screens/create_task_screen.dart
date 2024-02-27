import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:session_3_todo_task/screen_components/todo_listview.dart';
import 'package:session_3_todo_task/widgets/input_task.dart';
import '../screen_components/create_task_appbar.dart';
import '../utils/validation_utils.dart';
import '../widgets/subtask_tile.dart';

class CreateTask extends StatelessWidget {
  const CreateTask({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController _taskNameController = TextEditingController();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff004a77),
        child: Icon(Icons.check,
        color: Color(0xffffffff),),
        onPressed: (){},
      ),
      appBar: CreateTaskAppbar(),
      body: Padding(
        padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            bottom: 15.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Title",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
            ),),
            SizedBox(height: 10),
            InputTask(
              controller: _taskNameController,
              prefix: SizedBox(
                width: 2.0,
                height: 2.0,
                child: SvgPicture.asset("assets/title.svg",
                  fit: BoxFit.scaleDown,
                ),
              ),
              hintText: "Task title",
              validator: (input) => ValidationUtilities.taskNameLength(input),
            ),
            SizedBox(height: 15),
            Divider(
              color: Color(0xffb7b7b7),
              thickness: 1,
            ),
            SizedBox(height: 15),
            Text("ToDos",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 17,
              ),),
            SizedBox(height: 10),
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height * 0.1, // For example, max height is 50% of the screen height
                  maxHeight: MediaQuery.of(context).size.height * 0.5,
                ),
                child: ToDoListView(),
              ),
            ),
            Center(
              child: ElevatedButton(
                  onPressed: (){},
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/plus.svg"),
                  SizedBox(width: 5),
                  Text("Add",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff004a77),
                fixedSize: Size(190, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
              ),),
            ),
          ],
        ),
      ),
    );
  }
  // void initializeController(int id){
  //   final TextEditingController _todo${id.toString()}Controller = TextEditingController();
  // }
}
