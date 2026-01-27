void main() {
  print(calculateRectangle(5, 3));
  print(createPerson('Guba'));
  print(createPerson('Ahmed', 22));
  print(createPerson('Mohamed', 31, 'Cairo'));
  // Call with email="user@example.com", password="123456"
  print(registerUser(email: "user@example.com", password: "123456"));
  print(sendMessage('Ahmed', message: 'Hello!', urgent: true));
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print("Even NUmbers  ${filterNumbers(numbers, (n) => n % 2 == 0)}  ");
  print("Odd Numbers,${filterNumbers(numbers, (n) => n % 2 != 0)}");
  print(
    " Prime Number ${filterNumbers(numbers, (number) => isPrimeNumber(number))}  ",
  );
}

Map<String, double> calculateRectangle(double length, double width) {
  final double area = length * width;
  return {"Length": length, "Width": width, "Area": area};
}

String createPerson(String name, [double? age, String? city]) {
  return "Name: $name, Age: ${age ?? "unknown"}, City: ${city ?? "unknown"}";
}

String registerUser({
  required String email,
  required String password,
  String? phone,
}) {
  return "Email: $email, Password: $password, Phone: ${phone ?? "unknown"}";
}

String sendMessage(String recipient, {String? message, bool urgent = false}) {
  return 'To: $recipient' +
      (message != null ? '\nMessage: $message' : '') +
      '\nUrgent: ${urgent ? "Yes" : "No"}';
}

List<int> filterNumbers(List<int> numbers, bool Function(int) predicate) {
  List<int> filteredList = [];
  for (int number in numbers) {
    if (predicate(number)) {
      filteredList.add(number);
    }
  }
  return filteredList;
}

bool isPrimeNumber(int n) {
  // 2 3 5 7
  if (n < 2) {
    return false;
  } //negative and 0 1
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) {
      return false;
    }
  }
  return true;
}
