import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final Gender gender;
  final int age;
  final int weightKG;
  final double heightCM;
  final double? bmi;

  const UserModel({
    required this.gender,
    required this.age,
    required this.weightKG,
    required this.heightCM,
    this.bmi,
  });

  UserModel copyWith({
    Gender? gender,
    int? age,
    int? weightKG,
    double? heightCM,
    double? bmi,
  }) {
    return UserModel(
      gender: gender ?? this.gender,
      age: age ?? this.age,
      weightKG: weightKG ?? this.weightKG,
      heightCM: heightCM ?? this.heightCM,
      bmi: bmi ?? this.bmi,
    );
  }

  @override
  List<Object?> get props => [gender, age, weightKG, heightCM, bmi];
}

enum Gender { male, female }

extension GenderDisplay on Gender {
  String get displayName => this == Gender.male ? 'Male' : 'Female';
}
