import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/CustomDotIndicator.dart';

class DotsIndecators extends StatelessWidget {
  DotsIndecators({super.key, required this.currentIndex});
  int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 6.0),
          child: Customdotindicator(
            isActive: index == currentIndex,
          ),
        ),
      ),
    );
  }
}
