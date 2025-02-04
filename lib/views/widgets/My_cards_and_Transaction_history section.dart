import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Custom_packground_container.dart';
import 'package:responsive_dash_board/views/widgets/My_Card_Section.dart';
import 'package:responsive_dash_board/views/widgets/Transaction_History.dart';

class transactionAndMyCardSection extends StatelessWidget {
  const transactionAndMyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Custom_Container(
        padding: 0,
        childwidget: const Column(
          children: [
            MyCardSection(),
            Divider(
              height: 12,
            ),
            TransactionHistory()
          ],
        ));
  }
}
