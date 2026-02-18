import 'package:flutter/material.dart';

class NoteModel {
  final int id;
  final String title;
  final String subtitle;
  final DateTime dateTime;
  final NoteCategory category;
  bool ischecked;

  NoteModel({
    required this.title,
    required this.subtitle,
    required this.dateTime,
    required this.category,
    this.ischecked = false,
  }) : id = DateTime.now().millisecondsSinceEpoch;
}

enum NoteCategory { personal, work, health, family, learning }

extension NoteCategoryExtension on NoteCategory {
  String get title {
    switch (this) {
      case NoteCategory.personal:
        return "Personal";
      case NoteCategory.work:
        return "Work";
      case NoteCategory.health:
        return "Health";
      case NoteCategory.family:
        return "Family";
      case NoteCategory.learning:
        return "Learning";
    }
  }

  IconData get icon {
    switch (this) {
      case NoteCategory.personal:
        return Icons.person_outline;
      case NoteCategory.work:
        return Icons.work_outline;
      case NoteCategory.health:
        return Icons.favorite_border;
      case NoteCategory.family:
        return Icons.home_outlined;
      case NoteCategory.learning:
        return Icons.school_outlined;
    }
  }

  Color get color {
    switch (this) {
      case NoteCategory.personal:
        return Colors.teal;
      case NoteCategory.work:
        return Colors.blue;
      case NoteCategory.health:
        return Colors.red;
      case NoteCategory.family:
        return Colors.grey;
      case NoteCategory.learning:
        return Colors.orange;
    }
  }
}
