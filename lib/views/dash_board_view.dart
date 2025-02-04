import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/Custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/Mobil_Layout.dart';
import 'package:responsive_dash_board/views/widgets/Tablet_Layout.dart';
import 'package:responsive_dash_board/views/widgets/desktopview.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: const Color(0xFF4EB7F2),
              elevation: 0,
              leading: IconButton(
                  onPressed: () {
                    scaffoldKey.currentState!.openDrawer();
                  },
                  icon: const Icon(Icons.menu)),
            )
          : null,
      backgroundColor: const Color(0xFFFAFAFA),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const Mobil_Layout(),
        tabletLayout: (BuildContext context) => const TabletLayout(),
        desktopLayout: (BuildContext context) => const Desktopview(),
      ),
    );
  }
}
