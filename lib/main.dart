// @dart=2.9
import 'package:flutter/material.dart';
import 'package:sponsorgenix/Routes.dart';
import 'mobile/mobile_landing_page.dart';
import 'web/web_landing_page.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    Flurorouter.setupRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sponsorgenix',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(
          fontFamily: "Gilroy",
          visualDensity: VisualDensity.adaptivePlatformDensity),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      //this RootWidget is the root of our application
      //home: RootWidget(),
    );
  }
}

// class RootWidget extends StatelessWidget {
//   const RootWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: ((context, constraints) {
//         if (constraints.maxWidth > 930) {
//           return desktopView();
//         } else {
//           return mobileView();
//         }
//       }),
//     );
//   }
// }

// Widget mobileView() {
//   return MobileLandingPage();
// }

// Widget desktopView() {
//   initialRoute: '/',
//       onGenerateRoute: Flurorouter.router.generator,
//   return WebLandingPage();
// }
