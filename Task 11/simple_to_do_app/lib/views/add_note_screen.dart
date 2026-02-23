import 'package:flutter/material.dart';
import 'package:simple_to_do_app/models/note_model.dart';
import 'package:simple_to_do_app/views/widgets/custom_button.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController dateController = TextEditingController();

  NoteCategory selectedCategory = NoteCategory.personal;

  Future<void> pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      dateController.text = "${picked.day}/${picked.month}/${picked.year}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: Colors.grey),
                ),
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "Add a task",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 40),

              TextField(
                controller: titleController,
                decoration: const InputDecoration(hintText: "Submit my essay"),
              ),

              const SizedBox(height: 20),

              DropdownButtonFormField<NoteCategory>(
                isExpanded: true,
                decoration: const InputDecoration(
                  hintText: "Choose a category",
                ),
                items: NoteCategory.values.map((category) {
                  return DropdownMenuItem<NoteCategory>(
                    value: category,
                    child: Row(
                      children: [
                        Icon(category.icon, color: category.color, size: 20),
                        const SizedBox(width: 10),
                        Text(
                          category.title,
                          style: TextStyle(color: category.color),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                onChanged: (value) {
                  // Update selectedCategory locally with setState
                  setState(() {
                    selectedCategory = value!;
                  });
                },
              ),

              const SizedBox(height: 20),

              TextField(
                controller: dateController,
                readOnly: true,
                onTap: pickDate,
                decoration: const InputDecoration(
                  hintText: "10/20/24",
                  suffixIcon: Icon(Icons.calendar_today_outlined),
                ),
              ),

              const Spacer(),

              CustomButton(
                titleController: titleController,
                dateController: dateController,
                selectedCategory: selectedCategory,
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
