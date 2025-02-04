import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_details.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: IncomeChart()),
        Expanded(flex: 3, child: IncomeDetails())
      ],
    );
  }
}
