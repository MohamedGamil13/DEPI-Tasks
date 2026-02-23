import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_todo_app/controllers/notes_list_controller.dart';
import 'package:simple_todo_app/models/note_model.dart';

class NoteListtile extends StatelessWidget {
  const NoteListtile({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: noteModel.ischecked,
        onChanged: (value) {
          context.read<NotesListController>().toggleNote(noteModel.id);
        },
        activeColor: const Color(0xff008080),
      ),
      title: Text(
        noteModel.title,
        style: TextStyle(
          decoration: noteModel.ischecked ? .lineThrough : .none,
        ),
      ),
      subtitle: Text(
        noteModel.subtitle,
        style: const TextStyle(color: Color(0xffA3A3A3)),
      ),
    );
  }
}
