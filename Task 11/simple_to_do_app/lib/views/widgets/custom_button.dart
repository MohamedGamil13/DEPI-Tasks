import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:simple_to_do_app/controllers/notes_cubit.dart';
import 'package:simple_to_do_app/models/note_model.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.titleController,
    required this.dateController,
    required this.selectedCategory,
  });

  final TextEditingController titleController;
  final TextEditingController dateController;
  final NoteCategory selectedCategory;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: () {
          if (titleController.text.isEmpty || dateController.text.isEmpty)
            return;

          context.read<NotesCubit>().addNote(
            NoteModel(
              title: titleController.text,
              subtitle: '12:42 PM',
              dateTime: DateFormat('d/M/yyyy').parse(dateController.text),
              category: selectedCategory,
            ),
          );

          Navigator.pop(context);
        },
        child: const Text("Save"),
      ),
    );
  }
}
