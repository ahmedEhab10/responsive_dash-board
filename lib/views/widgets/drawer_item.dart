import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/Models/DraweritemModel.dart';

class DrawerItem extends StatelessWidget {
  Draweritemmodel draweritemmodel;
  DrawerItem({super.key, required this.draweritemmodel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(draweritemmodel.image),
      title: Text(
        draweritemmodel.title,
        style: const TextStyle(
          color: Color(0xFF064060),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
