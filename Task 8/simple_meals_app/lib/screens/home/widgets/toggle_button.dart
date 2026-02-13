import 'package:flutter/material.dart';

class ViewToggleButton extends StatefulWidget {
  const ViewToggleButton({
    super.key,
    required this.initialIsGridView,
    required this.onToggle,
  });
  final bool initialIsGridView;
  final ValueChanged<bool> onToggle;
  @override
  State<ViewToggleButton> createState() => _ViewToggleButtonState();
}

class _ViewToggleButtonState extends State<ViewToggleButton> {
  late bool isGridView;

  @override
  void initState() {
    super.initState();
    isGridView = widget.initialIsGridView;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        color: const Color(0xFFFFEBEE),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          AnimatedAlign(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInOut,
            alignment: isGridView
                ? Alignment.centerRight
                : Alignment.centerLeft,
            child: Container(
              width: 175,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xFFE92C3C),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    isGridView = false;
                    widget.onToggle(false);
                  }),
                  behavior: HitTestBehavior
                      .opaque, //i add this because when u built the button i must touch the text to response
                  child: Center(
                    child: Text(
                      'List View',
                      style: TextStyle(
                        color: isGridView ? Colors.grey[600] : Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() {
                    isGridView = true;
                    widget.onToggle(true);
                  }),
                  behavior: HitTestBehavior.opaque,
                  child: Center(
                    child: Text(
                      'Grid View',
                      style: TextStyle(
                        color: isGridView ? Colors.white : Colors.grey[600],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
