import 'payment.dart';

class CreditCardPayment implements Payment {
  final String cardNumber;
  final DateTime expiryDate;
  final String cvv;

  CreditCardPayment({
    required this.cardNumber,
    required this.expiryDate,
    required this.cvv,
  });

  @override
  void Pay(double amount) {
    if (DateTime.now().isAfter(expiryDate)) {
      throw Exception('Card is expired');
    }

    print('Paid $amount using Credit Card');
  }

  @override
  String PaymentDetails() {
    return 'Credit Card ending with ${cardNumber.substring(cardNumber.length - 4)}';
  }
}
