import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sponsorgenix/constants.dart';
import 'package:sponsorgenix/web/sections/Home/discover_us_web.dart';
import 'package:sponsorgenix/web/sections/Home/home_contact_web.dart';
import 'package:sponsorgenix/web/sections/Home/home_footer.dart';
import 'package:sponsorgenix/web/sections/Home/home_footer_2.dart';
import 'package:sponsorgenix/web/sections/Home/home_footer_3.dart';
import 'package:sponsorgenix/web/sections/Home/home_footer_4.dart';
import 'package:sponsorgenix/web/sections/Home/home_services_web.dart';
import 'package:sponsorgenix/web/widgets/whatsapp_fab.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'sections/Footer.dart';
import 'sections/Home/header_web.dart';
import 'sections/InfoPalette.dart';
import 'sections/ProfileTile.dart';
import 'sections/TestimonialTile.dart';
import 'widgets/web_navigation_tabs.dart';

class WebLandingPage extends StatefulWidget {
  // const WebLandingPage({Key? key}) : super(key: key);
  @override
  State<WebLandingPage> createState() => _WebLandingPageState();
}

List navitems = ["Home", "About", "Blog", "Contact"];

class _WebLandingPageState extends State<WebLandingPage>
    with TickerProviderStateMixin {
  final _homeHeaderKey = GlobalKey();
  final _homeDiscoverUsKey = GlobalKey();
  final _homeServicesKey = GlobalKey();
  final _homeContactUsKey = GlobalKey();
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  );
  late bool condition;
  double height = 1500;
  final _scrollController = ScrollController();
  double pixels = 0.0;

  @override
  void initState() {
    condition = true;
    Future.delayed(Duration(milliseconds: 400), (() {
      setState(() {
        height = 0;
      });
    }));

    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;
      });

      if (_scrollController.position.pixels > 100) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }

  // Future goToHeader() async {
  //   final context = _homeHeaderKey.currentContext!;
  //   await Scrollable.ensureVisible(context,
  //       alignment: 0, duration: Duration(milliseconds: 300));
  // }

  // Future goToHomeDiscover() async {
  //   final context = _homeDiscoverUsKey.currentContext!;
  //   await Scrollable.ensureVisible(context,
  //       alignment: 0, duration: Duration(milliseconds: 300));
  // }

  // Future goToHomeServices() async {
  //   final context = _homeServicesKey.currentContext!;
  //   await Scrollable.ensureVisible(context,
  //       alignment: 0, duration: Duration(milliseconds: 300));
  // }

  // Future goToHomeContacts() async {
  //   final context = _homeContactUsKey.currentContext!;
  //   await Scrollable.ensureVisible(context,
  //       alignment: 0.5, duration: Duration(milliseconds: 300));
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: size.width * 0.02, vertical: size.height * 0.05),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/Sponsorgenix logo.png",
                  height: 40,
                  filterQuality: FilterQuality.high,
                ),
                SizedBox(
                  width: size.width * 0.009,
                ),
                Expanded(
                  child: Container(
                    child: DefaultTextStyle(
                      style: const TextStyle(
                          fontFamily: kDefaultFontFamily,
                          color: Colors.white,
                          fontSize: 22,
                          letterSpacing: 1.1,
                          fontWeight: FontWeight.w100),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Sponsorgenix',
                            speed: const Duration(milliseconds: 430),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.34,
                ),
                Expanded(
                  child: Row(
                    children: navitems
                        .map((e) => NavButton(
                              text: e,
                              function: () {
                                setState(() {
                                  condition = true;
                                  height = MediaQuery.of(context).size.height;
                                });
                                Future.delayed(Duration(milliseconds: 800), () {
                                  Navigator.pushNamed(context, '/$e');
                                });
                              },
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
        preferredSize: Size(size.width, size.height * 0.25),
      ),
      extendBodyBehindAppBar: true,
      body: WebSmoothScroll(
        controller: _scrollController,
        child: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                children: [
                  HeaderSectionWeb(
                    pixels: pixels,
                    down_key: IconButton(
                      iconSize: 30,
                      icon: LottieBuilder.network(
                        "https://assets3.lottiefiles.com/packages/lf20_kxjicwsk.json",
                        fit: BoxFit.contain,
                      ),
                      onPressed: () {},
                      // onPressed: () => _homeDiscoverUsKey,
                    ),
                  ),
                  HomeDiscoverUsWeb(
                    pixels: pixels,
                    key: _homeDiscoverUsKey,
                  ),
                  HomeServicesWeb(
                    pixels: pixels,
                    key: _homeServicesKey,
                  ),
                  HomeContactUsWeb(
                    pixels: pixels,
                    key: _homeContactUsKey,
                  ),
                  HomeFooter(pixels: pixels),
                  HomeFooter2(pixels: pixels),
                  HomeFooter3(pixels: pixels),
                  HomeFooter4(pixels: pixels),
                  Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: ScaleTransition(
        scale: _animation,
        child: const CustomWhatsAppFAB(
          iconSize: 40,
          containerHeight: 60,
        ),
      ),
    );
  }
}
