import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Models/DraweritemModel.dart';
import 'package:responsive_dash_board/Utils/App_Images.dart';
import 'package:responsive_dash_board/views/widgets/Infolistile.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int activeIndex = 0;

  final List<Draweritemmodel> items = [
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
          const Infolistile(
            image: Assets.imagesFace2,
            Title: 'Ahmed Ehab',
            SubTitle: 'hobaa24@gmail.com',
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (activeIndex != index) {
                    setState(() {
                      activeIndex = index;
                      print(activeIndex);
                    });
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: DrawerItem(
                    draweritemmodel: items[index],
                    isActive: activeIndex == index,
                  ),
                ),
              );
            },
          ),
          Expanded(child: SizedBox()),
          const inActiveitem(
            draweritemmodel: Draweritemmodel(
                image: Assets.imagesSetting, title: 'Setting system'),
          ),
          const inActiveitem(
            draweritemmodel: Draweritemmodel(
                image: Assets.imagesLogout, title: 'Logout account'),
          ),
          SizedBox(
            height: 48,
          )
        ],
      ),
    );
  }
}
