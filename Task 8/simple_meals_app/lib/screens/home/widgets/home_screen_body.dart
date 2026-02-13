import 'package:flutter/material.dart';
import 'package:simple_meals_app/constants/dummy_data.dart';
import 'package:simple_meals_app/screens/home/widgets/custom_carouselslider.dart';
import 'package:simple_meals_app/screens/home/widgets/custom_gridview.dart';
import 'package:simple_meals_app/screens/home/widgets/custom_listview.dart';
import 'package:simple_meals_app/screens/home/widgets/custom_sreach_bar.dart';
import 'package:simple_meals_app/screens/home/widgets/toggle_button.dart';
import 'package:simple_meals_app/widgets/section_title.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody> {
  bool isGridView = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: CustomSreachBar(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 24.0),
          child: CustomCarouselslider(),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: SectionTitle(title: 'Featured Items'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 35),
          child: ViewToggleButton(
            initialIsGridView: isGridView,
            onToggle: (bool value) {
              setState(() {
                isGridView = value;
              });
            },
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: viewSelector(),
          ),
        ),
      ],
    );
  }

  Widget viewSelector() {
    return isGridView
        ? const CustomGridview(productesList: productesList)
        : const CustomListview(productesList: productesList);
  }
}
