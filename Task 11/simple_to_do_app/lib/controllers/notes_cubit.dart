// notes_cubit.dart
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  final List<NoteModel> _notesList = [];

  List<NoteModel> get notesList => List.unmodifiable(_notesList);

  void addNote(NoteModel note) {
    _notesList.add(
      NoteModel(
        title: note.title,
        subtitle: note.subtitle,
        dateTime: note.dateTime,
        category: note.category,
      ),
    );
    log("Note has been added successfully");
    emit(NotesLoaded(List.from(_notesList)));
  }

  void toggleNote(int id) {
    final note = _getNote(id);
    note.ischecked = !note.ischecked;
    emit(NotesLoaded(List.from(_notesList)));
  }

  bool isCompleted(int id) {
    return _getNote(id).ischecked;
  }

  NoteModel _getNote(int id) {
    return _notesList.firstWhere((note) => note.id == id);
  }

  void selectCategory(NoteCategory category) {
    //   // category selection is local UI state, no need to emit
    //   // but if you want to track it in the cubit:
    //   emit(NotesLoaded(category));
    // }
  }
}
