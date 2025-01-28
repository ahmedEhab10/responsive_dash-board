import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/desktopview.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => Text('mobile Layout'),
        tabletLayout: (BuildContext context) => Text('Tablet Layout'),
        desktopLayout: (BuildContext context) => Desktopview(),
      ),
    );
  }
}
