// notes_state.dart
part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoaded extends NotesState {
  final List<NoteModel> notesList;

  NotesLoaded(this.notesList);
}

class NotesSearched extends NotesState {
  final List<NoteModel> notesList;

  NotesSearched({required this.notesList});
}

class NotesEmpty extends NotesState {}
