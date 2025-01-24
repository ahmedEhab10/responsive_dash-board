import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Utils/App_Images.dart';
import 'package:responsive_dash_board/views/widgets/Infolistile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        children: [
          Infolistile(
            image: Assets.imagesFace2,
            Title: 'Ahmed Ehab',
            SubTitle: 'hobaa24@gmail.com',
          )
        ],
      ),
    );
  }
}
