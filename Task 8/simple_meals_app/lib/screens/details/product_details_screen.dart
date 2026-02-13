import 'package:flutter/material.dart';
import 'package:simple_meals_app/models/product_model.dart';
import 'package:simple_meals_app/screens/details/widgets/circle_button.dart';
import 'package:simple_meals_app/screens/details/widgets/custom_elevatedbutton.dart';
import 'package:simple_meals_app/screens/details/widgets/details_widget.dart';
import 'package:simple_meals_app/widgets/product_card_image.dart';
import 'package:simple_meals_app/widgets/section_title.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isFavorite = false;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Hero(
                  tag: widget.product.name,
                  child: ProductCardImage(
                    image: widget.product.image,
                    height: 300,
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: CircleButton(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: CircleButton(
                    onTap: () => setState(() => isFavorite = !isFavorite),
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: const Color(0xFFE92C3C),
                      size: 22,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      crossAxisAlignment: .start,
                      children: [
                        Expanded(
                          child: Text(
                            widget.product.name,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: .bold,
                              color: Color(0xFF1F2937),
                            ),
                          ),
                        ),
                        Text(
                          '\$${widget.product.price}',
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFE92C3C),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DetailsWidget(
                          icon: Icons.star,
                          value: '4.8',
                          label: '128 reviews',
                          iconColor: Color(0xFFFFB800),
                        ),
                        DetailsWidget(
                          icon: Icons.timer_outlined,
                          value: '20',
                          label: 'MINS',
                          iconColor: Color(0xFFE92C3C),
                        ),
                        DetailsWidget(
                          icon: Icons.local_fire_department,
                          value: '350',
                          label: 'KCAL',
                          iconColor: Color(0xFFE92C3C),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Description
                    const SectionTitle(title: 'Description'),
                    const SizedBox(height: 8),
                    Text(
                      widget.product.description,
                      maxLines: isExpanded ? null : 2,
                      overflow: isExpanded
                          ? TextOverflow.visible
                          : TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() => isExpanded = !isExpanded),
                      child: Text(
                        isExpanded ? 'See Less' : 'See More',
                        style: const TextStyle(
                          color: Color(0xFFE92C3C),
                          fontWeight: .w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    const SectionTitle(title: 'Ingredients'),
                    const SizedBox(height: 12),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: widget.product.ingredients
                          .map(
                            (ingredient) => _IngredientChip(label: ingredient),
                          )
                          .toList(),
                    ),
                    const SizedBox(height: 32),

                    const CustomElevatedbutton(text: 'Add to Cart'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _IngredientChip extends StatelessWidget {
  const _IngredientChip({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF5F5),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFFFD5D5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('🥩', style: TextStyle(fontSize: 14)),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              color: Color(0xFF1F2937),
              fontWeight: .w500,
            ),
          ),
        ],
      ),
    );
  }
}
