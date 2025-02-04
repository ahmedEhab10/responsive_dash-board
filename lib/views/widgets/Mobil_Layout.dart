import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Income_Section.dart';
import 'package:responsive_dash_board/views/widgets/My_cards_and_Transaction_history%20section.dart';
import 'package:responsive_dash_board/views/widgets/middle_Section.dart';

class Mobil_Layout extends StatelessWidget {
  const Mobil_Layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          middle_section(),
          SizedBox(
            height: 32,
          ),
          transactionAndMyCardSection(),
          SizedBox(
            height: 32,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
