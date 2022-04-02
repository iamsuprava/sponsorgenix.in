import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sponsorgenix/constants.dart';
//import 'package:sponsorgenix/web/sections/Feedbacks/feedbacks_web.dart';
import 'package:sponsorgenix/web/sections/Home/discover_us_web.dart';
import 'package:sponsorgenix/web/sections/Home/home_contact_web.dart';
import 'package:sponsorgenix/web/sections/Home/home_footer.dart';
import 'package:sponsorgenix/web/sections/Home/home_footer_2.dart';
import 'package:sponsorgenix/web/sections/Home/home_footer_3.dart';
import 'package:sponsorgenix/web/sections/Home/home_footer_4.dart';
import 'package:sponsorgenix/web/sections/Home/home_services_web.dart';
//import 'package:sponsorgenix/web/widgets/glowing_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';
//import 'package:sponsorgenix/web/sections/Recent%20Works/recent_works_web.dart';
//import 'package:sponsorgenix/web/sections/Services/services_screen_web.dart';
//import 'sections/About Us/about_us_web.dart';
import 'sections/Footer.dart';
import 'sections/Home/header_web.dart';
import 'sections/InfoPalette.dart';
import 'sections/ProfileTile.dart';
import 'sections/TestimonialTile.dart';
import 'widgets/web_navigation_tabs.dart';

class WebLandingPage extends StatefulWidget {
  // WebLandingPage({Key? key}) : super(key: key);

  @override
  State<WebLandingPage> createState() => _WebLandingPageState();
}

List navitems = ["Home", "About Us", "Blog", "Contact"];

class _WebLandingPageState extends State<WebLandingPage> {
  final _homeHeaderKey = GlobalKey();
  final _homeDiscoverUsKey = GlobalKey();
  final _homeServicesKey = GlobalKey();
  final _homeContactUsKey = GlobalKey();
  late bool condition;
  double height = 1500;
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

  // Future goToHeader() async {
  //   final context = _homeHeaderKey.currentContext!;
  //   await Scrollable.ensureVisible(context,
  //       alignment: 0, duration: Duration(milliseconds: 300));
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
                  // child: Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: [
                  //     NavBarTabs(title: 'Home', onTap: goToHeader),
                  //     NavBarTabs(title: 'About Us', onTap: () {}),
                  //     NavBarTabs(title: 'Services', onTap: () {}),
                  //     NavBarTabs(title: 'Contact Us', onTap: () {}),
                  //   ],
                  // ),
                ),
              ],
            ),
          ),
        ),
        preferredSize: Size(size.width, size.height * 0.2),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            VideoPlayerWidget(),
            // HeaderSectionWeb(
            //   pixels: pixels,
            //   down_key: IconButton(
            //     icon: LottieBuilder.network(
            //       "https://assets3.lottiefiles.com/packages/lf20_kxjicwsk.json",
            //       fit: BoxFit.contain,
            //     ),
            //     onPressed: () {},
            //   ),
            // ),
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
    );
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

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController? _videoPlayerController;

  @override
  void initState() {
    _videoPlayerController =
        VideoPlayerController.asset("assets/images/Untitled.webm")
          ..setLooping(true)
          ..initialize().then((_) {
            setState(() {});
          });
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // mutes the video
      _videoPlayerController!.setVolume(0);
      // Plays the video once the widget is build and loaded.
      _videoPlayerController!.play();
    });

    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _videoPlayerController!.value.isInitialized
          ? AspectRatio(
              aspectRatio: _videoPlayerController!.value.aspectRatio,
              child: VideoPlayer(_videoPlayerController!),
            )
          : Container(),
    );
  }
}
