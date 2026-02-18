import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/controllers/notes_list_controller.dart';
import 'package:simple_todo_app/views/add_note_screen.dart';
import 'package:simple_todo_app/views/widgets/custom_appbar.dart';
import 'package:simple_todo_app/views/widgets/notes_listview.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomAppbar(
            icon: const Icon(Icons.add, color: Colors.white),
            title: 'Tasks',
            onIconPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChangeNotifierProvider.value(
                  value: context.read<NotesListController>(),
                  child: const AddNoteScreen(),
                ),
              ),
            ),
          ),
        ),

        Consumer<NotesListController>(
          builder: (BuildContext context, value, Widget? child) {
            if (value.notesList.isEmpty) {
              return const Center(
                child: Text(
                  "No Note yet",
                  style: TextStyle(fontSize: 15, fontWeight: .bold),
                ),
              );
            }
            return Expanded(child: NotesListview(notesList: value.notesList));
          },
        ),
      ],
    );
  }
}
