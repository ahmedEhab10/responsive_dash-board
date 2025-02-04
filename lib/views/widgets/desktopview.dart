import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/Income_Section.dart';
import 'package:responsive_dash_board/views/widgets/My_cards_and_Transaction_history%20section.dart';
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
              flex: 3,
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: middle_section(),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              transactionAndMyCardSection(),
                              Expanded(child: IncomeSection())
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
