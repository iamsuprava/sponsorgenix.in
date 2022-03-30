import 'package:flutter/material.dart';
import 'package:sponsorgenix/mobile/navigation/nav_drawer.dart';

class AboutUsMobile extends StatelessWidget {
  const AboutUsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("About Us"),
      ),
    );
  }
}
