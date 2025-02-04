import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/TransactionHistoeyHeader.dart';
import 'package:responsive_dash_board/views/widgets/TransactionHistoryListView.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoey_Headeer(),
        Text(
          '13 April 2022',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFFAAAAAA)),
        ),
        Transactionhistorylistview()
      ],
    );
  }
}
