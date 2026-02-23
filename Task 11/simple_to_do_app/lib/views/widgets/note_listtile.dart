import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_app/controllers/notes_cubit.dart';
import 'package:simple_to_do_app/models/note_model.dart';

class NoteListtile extends StatelessWidget {
  const NoteListtile({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: noteModel.ischecked,
        onChanged: (value) {
          context.read<NotesCubit>().toggleNote(noteModel.id);
        },
        activeColor: const Color(0xff008080),
      ),
      title: Text(
        noteModel.title,
        style: TextStyle(
          decoration: noteModel.ischecked
              ? TextDecoration.lineThrough
              : TextDecoration.none,
        ),
      ),
      subtitle: Text(
        noteModel.subtitle,
        style: const TextStyle(color: Color(0xffA3A3A3)),
      ),
    );
  }
}
