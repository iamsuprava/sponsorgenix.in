import 'package:flutter/material.dart';
import 'package:sponsorgenix/mobile/navigation/nav_drawer.dart';

class ContactUsMobile extends StatelessWidget {
  const ContactUsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        title: Text("Contact Us"),
      ),
    );
  }
}
