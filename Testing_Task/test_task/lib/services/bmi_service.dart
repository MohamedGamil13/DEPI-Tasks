class BmiService {
  double calculateBMI({required double heightCM, required int weightKG}) {
    final heightM = heightCM / 100;
    return weightKG / (heightM * heightM);
  }
}
