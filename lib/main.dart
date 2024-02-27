import 'package:flutter/material.dart';
import 'package:session_3_todo_task/screens/create_task_screen.dart';
import 'package:session_3_todo_task/screens/home_screen.dart';

void main(){
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xff121212),
        colorScheme: ColorScheme.dark(
          primary: Color(0xff121212),
          background: Color(0xff121212),
        )
      ),

      // theme: ThemeData.dark().copyWith(
      //   scaffoldBackgroundColor: const Color(0xff121212),
      // ),
      home: HomeScreen(),
      routes: {
        '/createtask': (context) => CreateTask(),
      },
    );
  }
}
