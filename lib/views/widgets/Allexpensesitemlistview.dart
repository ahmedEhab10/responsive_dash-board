import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Models/AllexpensesitemModel.dart';
import 'package:responsive_dash_board/Utils/App_Images.dart';
import 'package:responsive_dash_board/views/widgets/AllExpensesItem.dart';

class Allexpensesitemlistview extends StatefulWidget {
  Allexpensesitemlistview({super.key});

  @override
  State<Allexpensesitemlistview> createState() =>
      _AllexpensesitemlistviewState();
}

class _AllexpensesitemlistviewState extends State<Allexpensesitemlistview> {
  int seletedIndex = 0;
  final List<Allexpensesitemmodel> items = [
    const Allexpensesitemmodel(
        image: Assets.imagesBalanced,
        tital: 'Balance',
        Date: 'April 2022',
        price: r'$20,129'),
    const Allexpensesitemmodel(
        image: Assets.imagesIncome,
        tital: 'Income',
        Date: 'April 2022',
        price: r'$20,129'),
    const Allexpensesitemmodel(
        image: Assets.imagesExpenses,
        tital: 'Expenses',
        Date: 'April 2022',
        price: r'$20,129'),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
        children: items.asMap().entries.map(
      (e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (seletedIndex != index) {
                    seletedIndex = index;
                    print(seletedIndex);
                  }
                });
              },
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Allexpensesitem(
                    allexpensesitemmodel: item,
                    isSelected: seletedIndex == index,
                  )),
            ),
          );
        } else {
          return Expanded(
              child: GestureDetector(
            onTap: () {
              setState(() {
                if (seletedIndex != index) {
                  seletedIndex = index;
                  print(seletedIndex);
                }
              });
            },
            child: Allexpensesitem(
              allexpensesitemmodel: item,
              isSelected: seletedIndex == index,
            ),
          ));
        }
      },
    ).toList());
  }
}
