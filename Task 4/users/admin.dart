import 'user.dart';

class Admin extends User {
  final List<String> privilges;

  Admin({
    required super.email,
    required super.id,
    required super.password,
    required this.privilges,
  });
}
