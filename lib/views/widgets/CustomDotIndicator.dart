import 'package:flutter/material.dart';

class Customdotindicator extends StatelessWidget {
  Customdotindicator({super.key, required this.isActive});
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isActive ? 32 : 8,
      height: 8,
      duration: const Duration(microseconds: 300),
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xff4EB7F2) : const Color(0xFFE8E8E8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
