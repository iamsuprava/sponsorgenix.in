import 'package:flutter/material.dart';
import 'package:sponsorgenix/constants.dart';
import 'package:sponsorgenix/mobile/mobile_landing_page.dart';
import 'package:sponsorgenix/mobile/sections/About%20Us/about_us_mobile.dart';
import 'package:sponsorgenix/mobile/sections/Blog/blog_mobile.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_home_header.dart';
import 'package:sponsorgenix/mobile/sections/contact%20us/contact_us_mobile.dart';
import 'package:sponsorgenix/web/widgets/social_buttons_web.dart';
import 'package:url_launcher/url_launcher.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      child: Container(
          color: Colors.grey.shade900,
          child: ListView(
            controller: ScrollController(),
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    _header(),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    buildNavItems(context,
                        onClicked: () => selectedPage(context, 0),
                        navTitle: "Home",
                        NavIcon: Icons.home_rounded),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    buildNavItems(context,
                        onClicked: () => selectedPage(context, 1),
                        navTitle: "About Us",
                        NavIcon: Icons.person_rounded),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    buildNavItems(context,
                        onClicked: () => selectedPage(context, 2),
                        navTitle: "Blog",
                        NavIcon: Icons.design_services_rounded),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    buildNavItems(context,
                        onClicked: () => selectedPage(context, 3),
                        navTitle: "Contact Us",
                        NavIcon: Icons.call_made_rounded),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.005),
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _socialbuttons(
                          context,
                          url: "https://www.instagram.com/sponsorgenix",
                          child: Image.asset(
                            "assets/images/Instagram_3d.png",
                          ),
                        ),
                        _socialbuttons(
                          context,
                          url: "https://twitter.com/sponsorgenix",
                          child: Image.asset(
                            "assets/images/Twitter_3d.png",
                          ),
                        ),
                        _socialbuttons(
                          context,
                          url: "https://www.instagram.com/sponsorgenix",
                          child: Image.asset(
                            "assets/images/LinkedIn_3d.png",
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }

  Widget buildNavItems(
    BuildContext context, {
    required String navTitle,
    required IconData NavIcon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;

    return Material(
      color: Colors.transparent,
      child: ListTile(
        onTap: onClicked,
        leading: Icon(
          NavIcon,
          color: color,
        ),
        title: Text(
          navTitle,
          style: TextStyle(
              color: color,
              fontFamily: kDefaultFontFamily,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
      ),
    );
  }

  Widget _socialbuttons(BuildContext context,
      {required String url, required Widget child}) {
    return IconButton(
      iconSize: 27,
      icon: child,
      padding: const EdgeInsets.all(0),
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Something went wrong, try again later")));
        }
      },
    );
  }

  void selectedPage(BuildContext context, int i) {
    Navigator.of(context).pop();
    if (i == 0) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MobileLandingPage()));
    } else if (i == 1) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => AboutUsMobile()));
    } else if (i == 2) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BlogMobile()));
    } else if (i == 3) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => ContactUsMobile()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Something went wrong, try again later")));
    }
  }

  Widget _header() {
    return Container(
      child: Image.asset(
        "assets/images/Logo.png",
        filterQuality: FilterQuality.high,
        fit: BoxFit.contain,
      ),
    );
  }
}
