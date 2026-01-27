void main() {
  List<double> grades = [];
  grades = [70, 60, 100, 40, 90];
  print(
    'Grade Summary: \nTotal Grades: ${grades.length}\nAverage : ${calcAvg(grades)} \nPerformance: ${levelDetrmined(calcAvg(grades))}',
  );
}

double clacTotalGrades(List<double> grades) {
  double total = 0;
  for (double grade in grades) {
    total += grade;
  }
  return total;
}

double calcAvg(List<double> grades) {
  double avg = 0;
  avg = clacTotalGrades(grades) / grades.length;
  return avg;
}

String levelDetrmined(double avg) {
  String level = '';
  level = switch (avg) {
    >= 90 => 'Excellent',
    >= 80 && < 90 => 'Good',
    >= 70 && < 80 => 'Average',
    _ => 'Bad',
  };
  return level;
}
