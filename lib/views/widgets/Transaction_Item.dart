import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Models/TransactionHistory_Model.dart';

class TransactionItem extends StatelessWidget {
  TransactionItem({super.key, required this.transactionhistoryModel});
  TransactionhistoryModel transactionhistoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionhistoryModel.titl,
          style: const TextStyle(
            color: Color(0xFF064061),
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          transactionhistoryModel.subtitle,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xFFAAAAAA)),
        ),
        trailing: Text(
          transactionhistoryModel.amount,
          style: TextStyle(
            color: transactionhistoryModel.iSwithdrwal
                ? Color(0xFFF3735E)
                : Color(0xFF7DD97B),
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
