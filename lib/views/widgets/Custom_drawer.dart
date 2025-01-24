import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Models/DraweritemModel.dart';
import 'package:responsive_dash_board/Utils/App_Images.dart';
import 'package:responsive_dash_board/views/widgets/Infolistile.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<Draweritemmodel> items = [
    Draweritemmodel(image: Assets.imagesDashboard, title: 'Dashboard'),
    Draweritemmodel(image: Assets.imagesMyTransaction, title: 'My Transaction'),
    Draweritemmodel(image: Assets.imagesStatistics, title: 'Statistics'),
    Draweritemmodel(image: Assets.imagesWallerAccount, title: 'Wallet Account'),
    Draweritemmodel(image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Infolistile(
            image: Assets.imagesFace2,
            Title: 'Ahmed Ehab',
            SubTitle: 'hobaa24@gmail.com',
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: DrawerItem(
                    draweritemmodel: items[index],
                  ),
                );
              })
        ],
      ),
    );
  }
}
