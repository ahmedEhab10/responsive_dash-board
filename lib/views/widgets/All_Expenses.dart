import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/AllExpensesHeader.dart';
import 'package:responsive_dash_board/views/widgets/Allexpensesitemlistview.dart';
import 'package:responsive_dash_board/views/widgets/Custom_packground_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Custom_Container(
      childwidget: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 10,
          ),
          Allexpensesitemlistview()
        ],
      ),
    );
  }
}
