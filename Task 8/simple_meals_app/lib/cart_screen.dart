// import 'package:flutter/material.dart';
// import 'package:simple_meals_app/app_images.dart';

// class CartScreen extends StatefulWidget {
//   const CartScreen({super.key});

//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//   final List<_CartItem> cartItems = [
//     _CartItem(
//       image: AppImages.burgerMeal,
//       name: 'Classic Burger',
//       size: 'Large',
//       restaurant: 'Burger Palace',
//       price: 12.50,
//       quantity: 1,
//     ),
//     _CartItem(
//       image: AppImages.burgerMeal,
//       name: 'Chicken Burger',
//       size: 'Medium',
//       restaurant: 'Burger Palace',
//       price: 12.50,
//       quantity: 1,
//     ),
//   ];

//   double get subtotal =>
//       cartItems.fold(0, (sum, item) => sum + item.price * item.quantity);
//   double get deliveryFee => 5.00;
//   double get taxes => subtotal * 0.1;
//   double get total => subtotal + deliveryFee + taxes;

//   void _increment(int index) => setState(() => cartItems[index].quantity++);

//   void _decrement(int index) {
//     setState(() {
//       if (cartItems[index].quantity > 1) {
//         cartItems[index].quantity--;
//       } else {
//         cartItems.removeAt(index);
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFFAFAFA),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFFAFAFA),
//         elevation: 0,
//         centerTitle: true,
//         title: const Text(
//           'Cart',
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: .bold,
//             color: Color(0xFF1F2937),
//           ),
//         ),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const SizedBox(height: 8),

//                   // ✅ Restaurant Header
//                   _RestaurantHeader(
//                     name: 'Burger Palace',
//                     itemCount: cartItems.length,
//                   ),
//                   const SizedBox(height: 12),

//                   // ✅ Cart Items
//                   ...List.generate(
//                     cartItems.length,
//                     (index) => _CartItemCard(
//                       item: cartItems[index],
//                       onIncrement: () => _increment(index),
//                       onDecrement: () => _decrement(index),
//                     ),
//                   ),
//                   const SizedBox(height: 24),

//                   // ✅ Price Breakdown
//                   _PriceRow(label: 'Subtotal', value: subtotal),
//                   const SizedBox(height: 8),
//                   _PriceRow(label: 'Delivery Fee', value: deliveryFee),
//                   const SizedBox(height: 8),
//                   _PriceRow(label: 'Taxes', value: taxes),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 12),
//                     child: Divider(color: Color(0xFFE5E7EB)),
//                   ),
//                   _PriceRow(label: 'Total', value: total, isTotal: true),
//                   const SizedBox(height: 32),
//                 ],
//               ),
//             ),
//           ),

//           // ✅ Checkout Button
//           Padding(
//             padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
//             child: SizedBox(
//               width: double.infinity,
//               height: 55,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFFE92C3C),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   elevation: 0,
//                 ),
//                 child: const Text(
//                   'Checkout',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: 1,
//         selectedItemColor: const Color(0xFFE92C3C),
//         unselectedItemColor: Colors.grey,
//         backgroundColor: Colors.white,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }

// // ─────────────────────────────────────────
// // ✅ Private Widgets
// // ─────────────────────────────────────────

// class _CartItem {
//   final String image;
//   final String name;
//   final String size;
//   final String restaurant;
//   final double price;
//   int quantity;

//   _CartItem({
//     required this.image,
//     required this.name,
//     required this.size,
//     required this.restaurant,
//     required this.price,
//     required this.quantity,
//   });
// }

// class _RestaurantHeader extends StatelessWidget {
//   const _RestaurantHeader({required this.name, required this.itemCount});
//   final String name;
//   final int itemCount;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           width: 48,
//           height: 48,
//           decoration: BoxDecoration(
//             color: const Color(0xFFF3F4F6),
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: const Icon(Icons.store, color: Color(0xFF1F2937), size: 24),
//         ),
//         const SizedBox(width: 12),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               name,
//               style: const TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF1F2937),
//               ),
//             ),
//             Text(
//               '$itemCount items',
//               style: const TextStyle(fontSize: 13, color: Colors.grey),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// class _CartItemCard extends StatelessWidget {
//   const _CartItemCard({
//     required this.item,
//     required this.onIncrement,
//     required this.onDecrement,
//   });
//   final _CartItem item;
//   final VoidCallback onIncrement;
//   final VoidCallback onDecrement;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(color: const Color(0xFFE5E7EB)),
//       ),
//       child: Row(
//         children: [
//           // الصورة
//           ClipRRect(
//             borderRadius: BorderRadius.circular(12),
//             child: Image.asset(
//               item.image,
//               width: 64,
//               height: 64,
//               fit: BoxFit.cover,
//               errorBuilder: (_, __, ___) => Container(
//                 width: 64,
//                 height: 64,
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFF3F4F6),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: const Icon(Icons.fastfood, color: Colors.grey),
//               ),
//             ),
//           ),
//           const SizedBox(width: 12),

//           // الاسم والتفاصيل
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   item.name,
//                   style: const TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Color(0xFF1F2937),
//                   ),
//                 ),
//                 const SizedBox(height: 2),
//                 Text(
//                   'Size: ${item.size}',
//                   style: const TextStyle(fontSize: 12, color: Colors.grey),
//                 ),
//                 Text(
//                   item.restaurant,
//                   style: const TextStyle(
//                     fontSize: 12,
//                     color: Color(0xFFE92C3C),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//               ],
//             ),
//           ),

//           // ✅ Quantity Controller
//           _QuantityController(
//             quantity: item.quantity,
//             onIncrement: onIncrement,
//             onDecrement: onDecrement,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class _QuantityController extends StatelessWidget {
//   const _QuantityController({
//     required this.quantity,
//     required this.onIncrement,
//     required this.onDecrement,
//   });
//   final int quantity;
//   final VoidCallback onIncrement;
//   final VoidCallback onDecrement;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         _QtyButton(icon: Icons.remove, onTap: onDecrement),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8),
//           child: Text(
//             '$quantity',
//             style: const TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.bold,
//               color: Color(0xFF1F2937),
//             ),
//           ),
//         ),
//         _QtyButton(icon: Icons.add, onTap: onIncrement),
//       ],
//     );
//   }
// }

// class _QtyButton extends StatelessWidget {
//   const _QtyButton({required this.icon, required this.onTap});
//   final IconData icon;
//   final VoidCallback onTap;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 28,
//         height: 28,
//         decoration: BoxDecoration(
//           border: Border.all(color: const Color(0xFFE5E7EB)),
//           borderRadius: BorderRadius.circular(8),
//           color: Colors.white,
//         ),
//         child: Icon(icon, size: 16, color: const Color(0xFF1F2937)),
//       ),
//     );
//   }
// }

// class _PriceRow extends StatelessWidget {
//   const _PriceRow({
//     required this.label,
//     required this.value,
//     this.isTotal = false,
//   });
//   final String label;
//   final double value;
//   final bool isTotal;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           label,
//           style: TextStyle(
//             fontSize: isTotal ? 17 : 14,
//             fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
//             color: isTotal ? const Color(0xFF1F2937) : Colors.grey,
//           ),
//         ),
//         Text(
//           '\$${value.toStringAsFixed(2)}',
//           style: TextStyle(
//             fontSize: isTotal ? 17 : 14,
//             fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
//             color: isTotal ? const Color(0xFF1F2937) : const Color(0xFF1F2937),
//           ),
//         ),
//       ],
//     );
//   }
// }
