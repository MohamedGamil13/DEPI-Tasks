abstract class User {
  final String _email;
  final int _id;
  final String _password;
  final RegExp _emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  final RegExp _passwordRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$',
  );
  User({required String email, required int id, required String password})
    : _email = email,
      _id = id,
      _password = password {
    _validate();
  }
  String get email => _email;
  int get id => _id;
  String get password => _password;

  bool _isValidEmail() {
    return _emailRegex.hasMatch(email);
  }

  bool _isValidPassword() {
    return _passwordRegex.hasMatch(password);
  }

  void _validate() {
    if (!_isValidEmail() || !_isValidPassword()) {
      print('Invalid data');
    }
  }
}
