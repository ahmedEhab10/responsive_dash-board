import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  @override
  int currentIndex = -1;
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(piedata()));
  }

  PieChartData piedata() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, PieTouchResponse) {
          currentIndex =
              PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          showTitle: false,
          radius: currentIndex == 0 ? 40 : 30,
          value: 40,
          color: const Color(0xFF208CC8),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 24,
          radius: currentIndex == 1 ? 40 : 30,
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          showTitle: false,
          value: 20,
          radius: currentIndex == 2 ? 40 : 30,
          color: const Color(0xFF064061),
        ),
        PieChartSectionData(
          showTitle: false,
          radius: currentIndex == 3 ? 40 : 30,
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
