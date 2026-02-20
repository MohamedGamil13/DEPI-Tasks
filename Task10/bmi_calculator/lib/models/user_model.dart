class UserModel {
  Gender gender;
  int age;
  int weightKG;
  double heightCM;
  final double bmi;

  UserModel({
    required this.gender,
    required this.age,
    required this.weightKG,
    required this.heightCM,
  }) : bmi = weightKG / (heightCM * heightCM);
}

enum Gender { male, female }

extension on Gender {
  String get displayName {
    switch (this) {
      case Gender.male:
        return 'Male';
      case Gender.female:
        return 'Female';
    }
  }
}

extension on Gender {
  bool get genderToggle {
    switch (this) {
      case Gender.male:
        return true;
      case Gender.female:
        return false;
    }
  }
}
