import 'payment.dart';

class WalletPayment implements Payment {
  final String phoneNumber;

  WalletPayment({required this.phoneNumber});

  bool _isValidEgyptianNumber(String phone) {
    RegExp egyptianPhoneRegex = RegExp(r'^01[0-2,5]{1}[0-9]{8}$');
    return egyptianPhoneRegex.hasMatch(phone);
  }

  @override
  void Pay(double amount) {
    if (!_isValidEgyptianNumber(phoneNumber)) {
      throw Exception('Invalid Egyptian phone number');
    }

    print('Paid $amount using Wallet');
  }

  @override
  String PaymentDetails() {
    return 'Wallet payment using phone number $phoneNumber';
  }
}

//  1. PaymentMethod 
// Defines payment processing with two abstract functions 
// • Pay(double amount) 
// • PaymentDetails() 
// 2. CreditCardPayment 
// • Traditional card payments with (Card number, Expiry date, CVV security code) 
// • Ensure that at checkout, order date must < expiry date of the card 
// 3. WalletPayment 
// • Handles wallet transactions with (phone number) 
// • Ensure that at checkout, wallet phone number is a valid number of Egyptian numbers 
// format 