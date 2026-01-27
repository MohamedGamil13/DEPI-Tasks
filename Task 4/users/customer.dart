import 'user.dart';

class Customer extends User {
  final String shippingAddress;

  Customer({
    required super.email,
    required super.id,
    required super.password,
    required this.shippingAddress,
  });
}
