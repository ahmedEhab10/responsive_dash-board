import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/Models/DraweritemModel.dart';

class DrawerItem extends StatelessWidget {
  Draweritemmodel draweritemmodel;
  bool isActive;
  DrawerItem(
      {super.key, required this.draweritemmodel, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Activeitem(
            draweritemmodel: draweritemmodel,
          )
        : inActiveitem(draweritemmodel: draweritemmodel);
  }
}

class inActiveitem extends StatelessWidget {
  const inActiveitem({
    super.key,
    required this.draweritemmodel,
  });

  final Draweritemmodel draweritemmodel;

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

class Activeitem extends StatelessWidget {
  const Activeitem({
    super.key,
    required this.draweritemmodel,
  });

  final Draweritemmodel draweritemmodel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(draweritemmodel.image),
      title: Text(
        draweritemmodel.title,
        style: const TextStyle(
          color: const Color(0xFF4EB7F2),
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
        ),
      ),
      trailing: Container(
        width: 3.5,
        color: Color(0xFF4EB7F2),
      ),
    );
  }
}
