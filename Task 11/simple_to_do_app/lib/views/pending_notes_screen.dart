import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_app/controllers/notes_cubit.dart';
import 'package:simple_to_do_app/models/note_model.dart';
import 'package:simple_to_do_app/views/widgets/custom_appbar.dart';
import 'package:simple_to_do_app/views/widgets/notes_listview.dart';

class PendingNotesScreen extends StatelessWidget {
  const PendingNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: CustomAppbar(
            title: 'Pending',
            icon: Icon(Icons.alarm, color: Colors.white),
          ),
        ),
        BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
            final List<NoteModel> pendingNotes = state is NotesLoaded
                ? state.notesList.where((note) => !note.ischecked).toList()
                : [];

            if (pendingNotes.isEmpty) {
              return const Center(
                child: Text(
                  "No pending tasks yet",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              );
            }

            return Expanded(child: NotesListview(notesList: pendingNotes));
          },
        ),
      ],
    );
  }
}
