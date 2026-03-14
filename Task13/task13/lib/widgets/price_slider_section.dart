import 'package:flutter/material.dart';

const Color kPrimary = Color(0xFF1975D2);

class PriceSliderSection extends StatefulWidget {
  final double priceValue;
  final ValueChanged<double> onPriceChanged;

  const PriceSliderSection({
    super.key,
    required this.priceValue,
    required this.onPriceChanged,
  });

  @override
  State<PriceSliderSection> createState() => _PriceSliderSectionState();
}

class _PriceSliderSectionState extends State<PriceSliderSection>
    with SingleTickerProviderStateMixin {
  late TextEditingController _controller;
  late AnimationController _animationController;
  late Animation<double> _sliderAnimation;
  double _animatedSliderValue = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.priceValue.toInt().toString(),
    );
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _animatedSliderValue = widget.priceValue / 10000;
  }

  @override
  void didUpdateWidget(PriceSliderSection oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.priceValue != widget.priceValue) {
      _animateSliderTo(widget.priceValue / 10000);
    }
  }

  void _animateSliderTo(double target) {
    final start = _animatedSliderValue;
    _sliderAnimation =
        Tween<double>(begin: start, end: target).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeInOut,
          ),
        )..addListener(() {
          setState(() {
            _animatedSliderValue = _sliderAnimation.value;
          });
        });
    _animationController.forward(from: 0);
  }

  void _onSubmitPrice() {
    final text = _controller.text.replaceAll(',', '').trim();
    final parsed = double.tryParse(text);
    if (parsed != null) {
      final clamped = parsed.clamp(1.0, 10000.0);
      widget.onPriceChanged(clamped);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Price Range',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 10),
        _PriceInputField(controller: _controller, onSubmit: _onSubmitPrice),
        const SizedBox(height: 12),
        _AnimatedSlider(
          value: _animatedSliderValue,
          onChanged: (v) {
            setState(() => _animatedSliderValue = v);
            final price = (v * 10000).clamp(1.0, 10000.0);
            _controller.text = price.toInt().toString();
            widget.onPriceChanged(price);
          },
        ),
        const SizedBox(height: 4),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$1', style: TextStyle(color: Colors.black45, fontSize: 12)),
            Text(
              '\$10k',
              style: TextStyle(color: Colors.black45, fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }
}

class _PriceInputField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSubmit;

  const _PriceInputField({required this.controller, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: kPrimary, width: 1.5),
        ),
        suffixIcon: IconButton(
          icon: const Icon(Icons.trending_up, color: kPrimary),
          onPressed: onSubmit,
        ),
      ),
      onSubmitted: (_) => onSubmit(),
    );
  }
}

class _AnimatedSlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const _AnimatedSlider({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: kPrimary,
        inactiveTrackColor: Colors.grey.shade200,
        thumbColor: kPrimary,
        overlayColor: kPrimary.withOpacity(0.15),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8),
        trackHeight: 4,
      ),
      child: Slider(value: value.clamp(0.0001, 1.0), onChanged: onChanged),
    );
  }
}
