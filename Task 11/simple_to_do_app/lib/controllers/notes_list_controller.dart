import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:simple_todo_app/models/note_model.dart';

class NotesListController extends ChangeNotifier {
  final List<NoteModel> notesList = [];
  void addNote(NoteModel note) {
    notesList.add(
      NoteModel(
        title: note.title,
        subtitle: note.subtitle,
        dateTime: note.dateTime,
        category: note.category,
      ),
    );
    log("Gamil ========= : Note Has added successfully");
    notifyListeners();
  }

  // void deleteNote(int id) {
  //   final note = getNote(id);
  //   notesList.remove(note);
  //   notifyListeners();
  // }

  void toggleNote(int id) {
    final note = getNote(id);
    note.ischecked = !note.ischecked;
    notifyListeners();
  }

  void selectCategory(NoteCategory current, NoteCategory selectedCategory) {
    selectedCategory = current;
    notifyListeners();
  }

  NoteModel getNote(int id) {
    final NoteModel note;
    note = notesList.firstWhere((note) => note.id == id);
    return note;
  }

  bool iscompleted(int id) {
    return getNote(id).ischecked;
  }
}
