import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/controllers/notes_list_controller.dart';
import 'package:simple_todo_app/views/home_screen.dart';

void main() {
  runApp(const SimpleTodoAPP());
}

class SimpleTodoAPP extends StatelessWidget {
  const SimpleTodoAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotesListController(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
