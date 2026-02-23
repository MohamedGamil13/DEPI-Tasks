import 'package:flutter/material.dart';
import 'package:simple_to_do_app/models/note_model.dart';
import 'package:simple_to_do_app/views/widgets/note_listtile.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key, required this.notesList});
  final List<NoteModel> notesList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notesList.length,
      itemBuilder: (BuildContext context, int index) {
        return NoteListtile(noteModel: notesList[index]);
      },
    );
  }
}
