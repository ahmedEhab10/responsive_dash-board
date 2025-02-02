import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/My_Card.dart';

class MyCardPageview extends StatelessWidget {
  MyCardPageview({super.key, required this.pageController});
  PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => MyCard(),
      ),
    );
  }
}
