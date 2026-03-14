import 'package:flutter/material.dart';
import 'package:task13/widgets/book_now_button.dart';
import 'package:task13/widgets/bottom_nav_bar.dart';
import 'package:task13/widgets/hotel_card.dart';
import 'package:task13/widgets/price_slider_section.dart';
import 'package:task13/widgets/tab_section.dart';

class HotelBookingScreen extends StatefulWidget {
  const HotelBookingScreen({super.key});

  @override
  State<HotelBookingScreen> createState() => _HotelBookingScreenState();
}

class _HotelBookingScreenState extends State<HotelBookingScreen> {
  bool _isCardExpanded = false;
  int _selectedTab = 0;
  double _priceValue = 1.0;
  int _selectedNavIndex = 0;

  void _toggleCard() {
    setState(() {
      _isCardExpanded = !_isCardExpanded;
    });
  }

  void _onTabChanged(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  void _onPriceChanged(double value) {
    setState(() {
      _priceValue = value;
    });
  }

  void _onNavChanged(int index) {
    setState(() {
      _selectedNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          'Smart Hotel Booking',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              HotelCard(isExpanded: _isCardExpanded, onTap: _toggleCard),
              const SizedBox(height: 16),
              TabSection(
                selectedTab: _selectedTab,
                onTabChanged: _onTabChanged,
              ),
              const SizedBox(height: 16),
              PriceSliderSection(
                priceValue: _priceValue,
                onPriceChanged: _onPriceChanged,
              ),
              const SizedBox(height: 24),
              BookNowButton(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedNavIndex,
        onChanged: _onNavChanged,
      ),
    );
  }
}
