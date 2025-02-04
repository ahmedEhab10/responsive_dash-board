import 'package:flutter/material.dart';
import 'package:responsive_dash_board/Models/DraweritemModel.dart';
import 'package:responsive_dash_board/Models/user_info_Model.dart';
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
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Infolistile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesFace2,
                  title: 'Ahmed Ehab',
                  subtitle: 'hobaa24@gmail.com'),
            ),
          ),
          SliverList.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  if (activeIndex != index) {
                    setState(
                      () {
                        activeIndex = index;
                        print(activeIndex);
                      },
                    );
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
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox()),
                inActiveitem(
                  draweritemmodel: Draweritemmodel(
                      image: Assets.imagesSetting, title: 'Setting system'),
                ),
                inActiveitem(
                  draweritemmodel: Draweritemmodel(
                      image: Assets.imagesLogout, title: 'Logout account'),
                ),
                SizedBox(
                  height: 48,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
