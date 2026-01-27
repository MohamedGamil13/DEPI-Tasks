abstract class Payment {
  void Pay(double amount);
  void PaymentDetails();
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