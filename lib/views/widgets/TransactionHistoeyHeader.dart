import 'package:flutter/material.dart';

class TransactionHistoey_Headeer extends StatelessWidget {
  const TransactionHistoey_Headeer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: TextStyle(
            color: Color(0xFF064061),
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'See all',
          style: TextStyle(
            color: Color(0xFF4EB7F2),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
