class UserModel {
  String gender;
  int age;
  int weightKG;
  int heightCM;
  final double bmi;

  UserModel({
    required this.gender,
    required this.age,
    required this.weightKG,
    required this.heightCM,
  }) : bmi = weightKG / (heightCM * heightCM);
}
