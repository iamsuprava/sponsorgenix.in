import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lottie/lottie.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_contact_us.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_discover_us.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_footer.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_footer2.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_footer3.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_footer4.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_home_header.dart';
import 'package:sponsorgenix/mobile/sections/Home/mobile_services.dart';
import 'package:sponsorgenix/web/sections/Footer.dart';
import 'package:sponsorgenix/web/widgets/whatsapp_fab.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';
import 'navigation/nav_drawer.dart';

class MobileLandingPage extends StatefulWidget {
  MobileLandingPage({Key? key}) : super(key: key);

  @override
  State<MobileLandingPage> createState() => _MobileLandingPageState();
}

class _MobileLandingPageState extends State<MobileLandingPage>
    with TickerProviderStateMixin {
  final _scrollController = ScrollController();
  double pixels = 0.0;
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOut,
  );
  @override
  void initState() {
    super.initState();
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
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _controller.dispose();
    super.dispose();
  }

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
        body: WebSmoothScroll(
          controller: _scrollController,
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                MobileHomeHeader(
                  pixels: pixels,
                  goDown: IconButton(
                    icon: LottieBuilder.network(
                      "https://assets3.lottiefiles.com/packages/lf20_kxjicwsk.json",
                      fit: BoxFit.contain,
                    ),
                    onPressed: () {},
                  ),
                ),
                MobileDiscoverUs(),
                MobileServices(),
                // MobileContactUs(),
                FooterMobile(
                  pixels: pixels,
                ),
                MobileFooter2(pixels: pixels),
                MobileFooter3(pixels: pixels),
                // MobileFooter4(pixels: pixels),
                Footer(),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniStartFloat,
        floatingActionButton: ScaleTransition(
          scale: _animation,
          child: const CustomWhatsAppFAB(
            containerHeight: 56,
            iconSize: 36,
          ),
        ),
      ),
    );
  }
}
