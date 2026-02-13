import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:simple_meals_app/constants/dummy_data.dart';
import 'package:simple_meals_app/screens/home/widgets/custom_container.dart';

class CustomCarouselslider extends StatelessWidget {
  const CustomCarouselslider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: productesList
          .map((item) => CustomContainer(product: item))
          .toList(),
      options: CarouselOptions(
        height: 210,
        aspectRatio: 16 / 9,
        initialPage: 0,
        autoPlay: true,
        viewportFraction: 0.86,
        enlargeCenterPage: true,
      ),
    );
  }
}
