import 'inventory.dart';
import 'payment/creditcard_payment.dart';
import 'products/clothing_products.dart';
import 'products/electronic_products.dart';
import 'products/product.dart';
import 'shopping/cart.dart';
import 'shopping/order.dart';
import 'users/admin.dart';
import 'users/customer.dart';

void main() {
  Admin admin = Admin(
    email: 'admin@test.com',
    id: 6,
    password: '1234',
    privilges: [],
  );

  Customer customer = Customer(
    email: 'ahmed@test.com',
    id: 2,
    password: '1234',
    shippingAddress: 'Cairo',
  );

  Product laptop = ElectronicProduct(
    id: 1,
    name: 'Laptop',
    price: 15000,
    description: 'Gaming laptop',
    warrantyPeriod: DateTime(2026, 1),
  );

  Product phone = ClothingProduct(
    id: 2,
    name: 'Phone',
    price: 8000,
    description: 'Smart phone',
    size: 'M',
  );

  Product headphones = ElectronicProduct(
    id: 3,
    name: 'Headphones',
    price: 1200,
    description: 'Wireless',
    warrantyPeriod: DateTime(2026, 1),
  );

  Inventory inventory = Inventory(stock: [], admin: admin);

  inventory.addProduct(laptop, 5);
  inventory.addProduct(phone, 10);
  inventory.addProduct(headphones, 15);

  Cart cart = Cart(customer: customer, items: []);

  if (inventory.isAvailalbe(laptop)) {
    cart.addItem(laptop, 2);
    inventory.updateStock(laptop, 2);
  }

  if (inventory.isAvailalbe(phone)) {
    cart.addItem(phone, 1);
    inventory.updateStock(phone, 1);
  }

  CreditCardPayment payment = CreditCardPayment(
    cardNumber: '1234567812345678',
    expiryDate: DateTime(2027, 12),
    cvv: '123',
  );

  Order order = Order.checkout(cart, payment);

  print('Order ID: ${order.id}');
  print('Order Date: ${order.date}');
  print('Total Price: ${order.totalPrice}');
  print('Payment: ${payment.PaymentDetails()}');
}
