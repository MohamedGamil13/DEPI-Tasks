import 'package:flutter/material.dart';
import 'package:task13/screens/home_booking_screen.dart';

void main() {
  runApp(const SmartHotelBookingApp());
}

class SmartHotelBookingApp extends StatelessWidget {
  const SmartHotelBookingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Hotel Booking',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1975D2)),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: const HotelBookingScreen(),
    );
  }
}
