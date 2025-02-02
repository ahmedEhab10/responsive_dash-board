import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/My_Card_Section.dart';
import 'package:responsive_dash_board/views/widgets/middle_Section.dart';

class Desktopview extends StatelessWidget {
  const Desktopview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomDrawer(),
          ),
          Expanded(
            flex: 2,
            child: middle_section(),
          ),
          SizedBox(
            width: 16,
          ),
          Expanded(child: MyCardSection())
        ],
      ),
    );
  }
}
