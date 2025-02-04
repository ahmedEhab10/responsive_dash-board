import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Models/TransactionHistory_Model.dart';
import 'package:responsive_dash_board/views/widgets/Transaction_Item.dart';

class Transactionhistorylistview extends StatelessWidget {
  const Transactionhistorylistview({super.key});

  static const items = [
    TransactionhistoryModel(
        titl: 'Cash Withdrawal',
        subtitle: '13 Apr, 2022 ',
        amount: r'$20,129',
        iSwithdrwal: true),
    TransactionhistoryModel(
        titl: 'Landing Page project',
        subtitle: '13 Apr, 2022 ',
        amount: r'$20,129',
        iSwithdrwal: false),
    TransactionhistoryModel(
        titl: 'Juni Mobile App project',
        subtitle: '13 Apr, 2022 ',
        amount: r'$20,129',
        iSwithdrwal: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionItem(
                transactionhistoryModel: e,
              ))
          .toList(),
    );

    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return TransactionItem(
            transactionhistoryModel: items[index],
          );
        });
  }
}
