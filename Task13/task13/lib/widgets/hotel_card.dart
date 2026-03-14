import 'package:flutter/material.dart';
import 'package:task13/widgets/star_rating.dart';

class HotelCard extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onTap;

  const HotelCard({super.key, required this.isExpanded, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(isExpanded ? 8 : 16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hotel image
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(isExpanded ? 8 : 16),
                topRight: Radius.circular(isExpanded ? 8 : 16),
              ),
              child: Image.asset(
                'assets/pic1.png',
                height: 180,
                width: .infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Expanded content
            AnimatedCrossFade(
              duration: const Duration(milliseconds: 350),
              firstCurve: Curves.easeIn,
              secondCurve: Curves.easeOut,
              crossFadeState: isExpanded
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: const SizedBox(width: double.infinity, height: 0),
              secondChild: _ExpandedHotelDetails(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ExpandedHotelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Grand Hyatt Manila',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              StarRating(rating: 3.5),
            ],
          ),
          const SizedBox(height: 4),
          const Text(
            'Deluxe King Room',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
          const SizedBox(height: 2),
          const Text(
            'Deluxe King Room a to din l Ansor',
            style: TextStyle(fontSize: 14, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
