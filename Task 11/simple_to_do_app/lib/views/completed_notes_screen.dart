import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_app/controllers/notes_cubit.dart';
import 'package:simple_to_do_app/models/note_model.dart';
import 'package:simple_to_do_app/views/widgets/custom_appbar.dart';
import 'package:simple_to_do_app/views/widgets/notes_listview.dart';

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
        BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
            final List<NoteModel> completedNotes = state is NotesLoaded
                ? state.notesList.where((note) => note.ischecked).toList()
                : [];

            if (completedNotes.isEmpty) {
              return const Center(
                child: Text(
                  "No completed tasks yet",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              );
            }

            return Expanded(child: NotesListview(notesList: completedNotes));
          },
        ),
      ],
    );
  }
}
