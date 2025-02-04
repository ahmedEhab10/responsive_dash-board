import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/Income_Section.dart';
import 'package:responsive_dash_board/views/widgets/Mobil_Layout.dart';
import 'package:responsive_dash_board/views/widgets/My_cards_and_Transaction_history%20section.dart';
import 'package:responsive_dash_board/views/widgets/middle_Section.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: Mobil_Layout()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
