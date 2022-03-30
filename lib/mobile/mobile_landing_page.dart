import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_contact_us.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_discover_us.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_footer.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_footer_2.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_home_header.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_services.dart';

import 'navigation/nav_drawer.dart';

class MobileLandingPage extends StatefulWidget {
  MobileLandingPage({Key? key}) : super(key: key);

  @override
  State<MobileLandingPage> createState() => _MobileLandingPageState();
}

class _MobileLandingPageState extends State<MobileLandingPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          drawer: const NavigationDrawer(),
          appBar: AppBar(
            title: Text(
              "Home",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          extendBodyBehindAppBar: true,
          body: SingleChildScrollView(
            child: Column(
              children: [
                MobileHomeHeader(),
                MobileDiscoverUs(),
                MobileServices(),
                MobileContactUs(),
                FooterMobile(),
                FooterMobile2(),
              ],
            ),
          )),
    );
  }
}
