import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/validation_utils.dart';
import '../widgets/input_task.dart';
class ToDoListView extends StatelessWidget {
  const ToDoListView({super.key});
  @override
  Widget build(BuildContext context) {

    final TextEditingController _taskNameController = TextEditingController();
    final TextEditingController _todo1Controller = TextEditingController();
    final TextEditingController _todo2Controller = TextEditingController();

    return ListView.builder(
      physics: AlwaysScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.only(bottom: 13.0),
          child: InputTask(
            controller: _todo1Controller,
            validator: (input) => ValidationUtilities.taskNameLength(input),
            hintText: "Todo ${index+1}",
            prefix: SizedBox(
              width: 2.0,
              height: 2.0,
              child: SvgPicture.asset("assets/clipboard.svg",
                fit: BoxFit.scaleDown,
              ),
            ),
            suffix: Icon(Icons.highlight_remove_outlined,
              color: Colors.red,
            ),
          ),
        );
      },
    );
  }
}
