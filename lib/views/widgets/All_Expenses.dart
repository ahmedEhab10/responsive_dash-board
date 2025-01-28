import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/Models/AllexpensesitemModel.dart';
import 'package:responsive_dash_board/Utils/App_Images.dart';
import 'package:responsive_dash_board/views/widgets/AllExpensesHeader.dart';
import 'package:responsive_dash_board/views/widgets/AllExpensesItem.dart';
import 'package:responsive_dash_board/views/widgets/Allexpensesitemlistview.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 20,
          ),
          Allexpensesitemlistview()
        ],
      ),
    );
  }
}
