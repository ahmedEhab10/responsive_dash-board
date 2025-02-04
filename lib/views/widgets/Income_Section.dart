import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Income_chart.dart';
import 'package:responsive_dash_board/views/widgets/incomeHeader.dart';
import 'package:responsive_dash_board/views/widgets/income_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [incomeHeader(), IncomeBody()],
    );
  }
}
