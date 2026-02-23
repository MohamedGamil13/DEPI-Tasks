import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_to_do_app/controllers/notes_cubit.dart';
import 'package:simple_to_do_app/views/home_screen.dart';

void main() {
  runApp(const SimpleTodoAPP());
}

class SimpleTodoAPP extends StatelessWidget {
  const SimpleTodoAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
