import 'package:flutter/material.dart';

class MobileLandingPage extends StatefulWidget {
  MobileLandingPage({Key? key}) : super(key: key);

  @override
  State<MobileLandingPage> createState() => _MobileLandingPageState();
}

class _MobileLandingPageState extends State<MobileLandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      // drawer: NavigationDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}

// class NavigationDrawer extends StatefulWidget {
//   const NavigationDrawer({Key? key}) : super(key: key);

//   @override
//   State<NavigationDrawer> createState() => _NavigationDrawerState();
// }

// final _drawerController = ZoomDrawerController();

// class _NavigationDrawerState extends State<NavigationDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return ZoomDrawer(
//       controller: _drawerController,
//       menuScreen: MenuScreen(),
//       mainScreen: MainScreen(),

//     );
//   }
// }
