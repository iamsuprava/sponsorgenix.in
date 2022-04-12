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
import 'package:url_launcher/url_launcher.dart';
import 'navigation/nav_drawer.dart';

class MobileLandingPage extends StatefulWidget {
  MobileLandingPage({Key? key}) : super(key: key);

  @override
  State<MobileLandingPage> createState() => _MobileLandingPageState();
}

class _MobileLandingPageState extends State<MobileLandingPage> {
  final _scrollController = ScrollController();
  double pixels = 0.0;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        pixels = _scrollController.position.pixels;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
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
      body: SingleChildScrollView(
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
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartFloat,
      floatingActionButton: FloatingActionButton(
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.whatsapp_rounded,
            size: 40,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              //shape: BoxShape.circle,

              gradient: LinearGradient(
                  colors: [Colors.greenAccent, Colors.greenAccent]),
              boxShadow: [
                BoxShadow(
                  color: Colors.cyan.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 16,
                  offset: Offset(-8, 0),
                ),
                BoxShadow(
                  color: Colors.greenAccent.withOpacity(0.6),
                  spreadRadius: 1,
                  blurRadius: 16,
                  offset: Offset(8, 0),
                ),
                BoxShadow(
                  color: Colors.cyan.withOpacity(0.2),
                  spreadRadius: 16,
                  blurRadius: 32,
                  offset: Offset(-8, 0),
                ),
                BoxShadow(
                  color: Colors.greenAccent.withOpacity(0.2),
                  spreadRadius: 16,
                  blurRadius: 32,
                  offset: Offset(8, 0),
                )
              ]),
        ),
        onPressed: () {
          openDialog();
        },
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(20),
        // ),
        // backgroundColor: const Color(0xFF25D366),
        // child: const Icon(
        //   Icons.whatsapp_rounded,
        //   size: 40,
        //   color: Colors.white,
        // ),
      ),
    ));
  }

  Future openDialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.greenAccent,
          title: Text("Your Name"),
          content: TextField(
            decoration: InputDecoration(hintText: "Enter your Name"),
          ),
          actions: [
            TextButton(
                child: Text("SEND"),
                onPressed: () async {
                  final url =
                      "https://api.whatsapp.com/send/?phone=918392068384&text&app_absent=0";
                  if (await canLaunch(url)) {
                    await launch(url);
                  }
                })
          ],
        ),
      );
}
