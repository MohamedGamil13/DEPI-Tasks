import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_app/controllers/notes_cubit.dart';
import 'package:simple_to_do_app/views/add_note_screen.dart';
import 'package:simple_to_do_app/views/widgets/custom_appbar.dart';
import 'package:simple_to_do_app/views/widgets/notes_listview.dart';

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
                builder: (context) => BlocProvider.value(
                  value: context.read<NotesCubit>(),
                  child: const AddNoteScreen(),
                ),
              ),
            ),
          ),
        ),

        BlocBuilder<NotesCubit, NotesState>(
          builder: (context, state) {
            if (state is NotesLoaded && state.notesList.isNotEmpty) {
              return Expanded(child: NotesListview(notesList: state.notesList));
            }
            return const Center(
              child: Text(
                "No Notes yet",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            );
          },
        ),
      ],
    );
  }
}
