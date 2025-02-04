import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/Dots_indecators.dart';
import 'package:responsive_dash_board/views/widgets/My_Card_PageView.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentpageindex = 0;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(
      () {
        currentpageindex = pageController.page!.round();
        setState(() {});
      },
    );
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text(
          'My Card',
          style: TextStyle(
            color: Color(0xFF064061),
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        MyCardPageview(
          pageController: pageController,
        ),
        const SizedBox(
          height: 15,
        ),
        DotsIndecators(
          currentIndex: currentpageindex,
        )
      ],
    );
  }
}
