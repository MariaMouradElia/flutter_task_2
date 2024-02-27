import 'package:flutter/material.dart';
class CreateTaskAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CreateTaskAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: ElevatedButton(
        onPressed: () => Navigator.pop(context),

        child: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        ),
      ),
      title: Text("Create Task",
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
      ),
    );
  }
  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
