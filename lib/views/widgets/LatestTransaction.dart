import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/LatestTransactionListView.dart';
import 'package:responsive_dash_board/views/widgets/Quick_Invoice.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: TextStyle(
            color: const Color(0xFF064061),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
          ),
        ),
        LatestTransactionListView(),
      ],
    );
  }
}
