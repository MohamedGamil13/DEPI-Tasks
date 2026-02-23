import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/controllers/notes_list_controller.dart';
import 'package:simple_todo_app/views/widgets/custom_appbar.dart';
import 'package:simple_todo_app/views/widgets/notes_listview.dart';

class CompletedNotesScreen extends StatelessWidget {
  const CompletedNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: CustomAppbar(
            title: 'Completed',
            icon: Icon(Icons.alarm, color: Colors.white),
          ),
        ),
        Consumer<NotesListController>(
          builder: (BuildContext context, value, Widget? child) {
            return Expanded(
              child: NotesListview(
                notesList: value.notesList
                    .where((note) => note.ischecked)
                    .toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}
