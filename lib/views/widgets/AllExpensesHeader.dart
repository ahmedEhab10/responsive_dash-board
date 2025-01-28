import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'All Expenses',
          style: TextStyle(
            color: const Color(0xFF064061),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          width: 138,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.06),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Monthly',
                  style: TextStyle(
                    color: const Color(0xFF064061),
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Color(0xFF064061),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
