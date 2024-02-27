import 'package:flutter/material.dart';
class TodoAppbar extends StatelessWidget implements PreferredSizeWidget{
  const TodoAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Image.asset("assets/gdsc_appbar_icon.png"),
      title: const Text(
          "ToDo",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
      ),
      actions: const [
        Icon(Icons.settings),
      ],
    );
  }
  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
      // .fromHeight(kToolbarHeight); // Provide the preferred size
}
