import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/All_Expenses.dart';
import 'package:responsive_dash_board/views/widgets/Quick_Invoice.dart';

class middle_section extends StatelessWidget {
  const middle_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(
            height: 5,
          ),
          QuickInvoice()
        ],
      ),
    );
  }
}
