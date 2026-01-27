import '../payment/payment.dart';
import '../products/product.dart';
import 'cart.dart';

class Order {
  final int id;
  final DateTime date;
  final List<Map<Product, int>> items;
  final double totalPrice;

  Order._({
    required this.id,
    required this.date,
    required this.items,
    required this.totalPrice,
  });

  factory Order.checkout(Cart cart, Payment payment) {
    double total = cart.getTotal();

    payment.Pay(total);

    return Order._(
      id: DateTime.now().millisecondsSinceEpoch,
      date: DateTime.now(),
      items: List.from(cart.items),
      totalPrice: total,
    );
  }
}

DateTime dateTime = DateTime.now();


// Shopping Process  
// 1. Shopping Cart: handling shopping process with 
// • Customer that represents the cart owner  done
// • List<Map<Product, int>> items selected with their quantity  done
// Handles: 
// • Item addition/removal 
// • Get total  
// 2. Order: Represents completed transactions with: 
// • Unique order ID 
// • Created Date 
// • Finalized item list 
// • Total price  done
// Provide: 
// • Checkout(PaymentMethod payment) 

// This function will take the payment method chosen to apply the checkout process 
// Note that at creating an order, you must pass the cart object to initiate the order details needed 
