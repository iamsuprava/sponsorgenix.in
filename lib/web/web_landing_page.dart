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

List navitems = ["Home", "About", "Blog", "Contact"];

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

  Future goToHeader() async {
    final context = _homeHeaderKey.currentContext!;
    await Scrollable.ensureVisible(context,
        alignment: 0, duration: Duration(milliseconds: 300));
  }

  Future goToHomeDiscover() async {
    final context = _homeDiscoverUsKey.currentContext!;
    await Scrollable.ensureVisible(context,
        alignment: 0, duration: Duration(milliseconds: 300));
  }

  Future goToHomeServices() async {
    final context = _homeServicesKey.currentContext!;
    await Scrollable.ensureVisible(context,
        alignment: 0, duration: Duration(milliseconds: 300));
  }

  Future goToHomeContacts() async {
    final context = _homeContactUsKey.currentContext!;
    await Scrollable.ensureVisible(context,
        alignment: 0.5, duration: Duration(milliseconds: 300));
  }

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
        preferredSize: Size(size.width, size.height * 0.3),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                HeaderSectionWeb(
                  down_key: IconButton(
                    icon: LottieBuilder.network(
                      "https://assets3.lottiefiles.com/packages/lf20_kxjicwsk.json",
                      fit: BoxFit.contain,
                    ),
                    onPressed: () {},
                    // onPressed: () => _homeDiscoverUsKey,
                  ),
                  // down_key: Container(
                  //   height: 40,
                  //   width: 40,
                  //   child: LottieBuilder.network(
                  //     "https://assets3.lottiefiles.com/packages/lf20_kxjicwsk.json",
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                ),
                HomeDiscoverUsWeb(
                  key: _homeDiscoverUsKey,
                ),
                HomeServicesWeb(
                  key: _homeServicesKey,
                ),
                HomeContactUsWeb(
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
  // reachUs() async {
  //   var contact = "+918392068384";
  //   var android_url = "whatsapp://send?phone=" + contact + "&text= Hi";
  //   var IOS_url = "https://wa.me/$contact?text=${Uri.parse("Hi")}";
  //   if (Platform.isIOS) {
  //     if (await canLaunch(IOS_url)) {
  //       await launch(IOS_url, forceSafariVC: false);
  //     } else {
  //       print("Whatsapp is not installed");
  //     }
  //   }
  // }
  // openwhatsapp() async {
  //   var whatsapp = "+91 8392068384";
  //   var whatsappURL_android =
  //       "https://api.whatsapp.com/send/?phone=918392068384&text&app_absent=0"; //whatsapp://send?phone=" + whatsapp + "&text= Hi
  //   var whatsappURL_ios = "https://wa.me/$whatsapp?text+${Uri.parse("hello")}";
  //   if (Platform.isIOS) {
  //     //for ios phone only
  //     if (await canLaunch(whatsappURL_ios)) {
  //       await launch(whatsappURL_ios, forceSafariVC: false);
  //     } else {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
  //     }
  //   } else {
  //     //android,web
  //     if (await canLaunch(whatsappURL_android)) {
  //       await launch(whatsappURL_android);
  //     } else {
  //       ScaffoldMessenger.of(context)
  //           .showSnackBar(SnackBar(content: new Text("whatsapp no installed")));
  //     }
  //   }
  // }
}
//https://api.whatsapp.com/send/?phone=918392068384&text&app_absent=0




// Container(
//                     height: 400.0,
//                     width: double.infinity,
//                     color: Colors.black,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           right: -200.0,
//                           child: Container(
//                             height: 330.0,
//                             width: 430.0,
//                             decoration: BoxDecoration(
//                               color:
//                                   Color.fromARGB(255, 24, 24, 24), //grey[100]
//                               borderRadius: BorderRadius.circular(300.0),
//                             ),
//                           ),
//                         ),
//                         Column(
//                           children: [
//                             Text(
//                               'How it works',
//                               style: GoogleFonts.nunito(
//                                 fontSize: 20.0,
//                                 fontWeight: FontWeight.w700,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 40.0,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 AnimatedOpacity(
//                                   opacity: pixels >= 3500 ? 1.0 : 0.0,
//                                   duration: Duration(milliseconds: 500),
//                                   child: AnimatedPadding(
//                                     duration: Duration(milliseconds: 500),
//                                     padding: EdgeInsets.only(
//                                         left: pixels >= 100 ? 0.0 : 500.0),
//                                     child: InfoPalette(
//                                       title: 'Community',
//                                       text:
//                                           'Communicate with colleagues, share ideas, find a team in a project in one space.',
//                                       icon: Icons.people_rounded,
//                                     ),
//                                   ),
//                                 ),
                                // InfoPalette(
                                //   title: 'Overview Reports',
                                //   text:
                                //       'Track your progress thanks to the reporting system right inside the platform.',
                                //   icon: Icons.pie_chart_rounded,
                                // ),
                                // InfoPalette(
                                //   title: 'Dashboard',
                                //   text:
                                //       'Manage your projects and tasks by tracking activity on the dashboard.',
                                //   icon: Icons.person_rounded,
                                // ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 60.0,
//                             ),
//                             TextButton(
//                               style: TextButton.styleFrom(
//                                 backgroundColor: Colors.white, //white
//                                 primary: Colors.black87, //black87
//                                 padding: EdgeInsets.all(0.0),
//                               ),
//                               onPressed: () {},
//                               child: Container(
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: 30.0,
//                                   vertical: 8.0,
//                                 ),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(40.0),
//                                   border: Border.all(
//                                     color: Colors.white, //grey[800]
//                                   ),
//                                 ),
//                                 child: Text(
//                                   'Explore More',
//                                   style: GoogleFonts.nunito(
//                                     fontSize: 12.0,
//                                     fontWeight: FontWeight.w800,
//                                   ),
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//             pt1
//                   Container(
//                     height: 500.0,
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.black, //white
//                     child: Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         Positioned(
//                           left: -250.0,
//                           child: Container(
//                             height: 450.0,
//                             width: 700.0,
//                             decoration: BoxDecoration(
//                               color: Colors.amber[400],
//                               borderRadius: BorderRadius.circular(400.0),
//                             ),
//                           ),
//                         ),
//                         AnimatedPositioned(
//                           duration: Duration(milliseconds: 500),
//                           top: 20.0,
//                           left: pixels >= 500 ? 100.0 : 0.0,
//                           child: Container(
//                             height: 400.0,
//                             width: 700.0,
//                             decoration: BoxDecoration(
//                               color: Colors.red,
//                               borderRadius: BorderRadius.circular(20.0),
//                             ),
//                             clipBehavior: Clip.antiAliasWithSaveLayer,
//                             child: Image.network(
//                               'https://miro.medium.com/max/2400/0*qO2PFu6dr04R1O6P.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                         ProfileTile(
//                           left: 80.0,
//                           top: -10.0,
//                           title: 'Send a final design to the team',
//                           subTitle: 'Sara, Client',
//                           factor: 1.0,
//                         ),
//                         ProfileTile(
//                           left: 620.0,
//                           top: 400.0,
//                           title: 'Publish Your project whenever you want',
//                           subTitle: 'Micheal',
//                           factor: 1.0,
//                         ),
//                         AnimatedPositioned(
//                           duration: Duration(milliseconds: 500),
//                           right: pixels >= 600 ? 100.0 : 0.0,
//                           top: 150.0,
//                           child: AnimatedOpacity(
//                             duration: Duration(milliseconds: 500),
//                             opacity: pixels >= 600 ? 1.0 : 0.0,
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Easy Project Management',
//                                   style: GoogleFonts.nunito(
//                                     fontWeight: FontWeight.w800,
//                                     fontSize: 25.0,
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 15.0,
//                                 ),
//                                 Container(
//                                   width: 280.0,
//                                   child: Text(
//                                     'Manage your project, Organize your own workspace, keep statistics and collaborate with your teammates in one place',
//                                     style: GoogleFonts.nunito(
//                                       fontWeight: FontWeight.w400,
//                                       color: Colors.black54,
//                                       fontSize: 14.0,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(
//                                   height: 20.0,
//                                 ),
//                                 TextButton(
//                                   style: TextButton.styleFrom(
//                                     shape: RoundedRectangleBorder(
//                                       borderRadius:
//                                           BorderRadius.circular(100.0),
//                                     ),
//                                     backgroundColor: Colors.grey[900],
//                                     padding: EdgeInsets.symmetric(
//                                       horizontal: 50.0,
//                                       vertical: 20.0,
//                                     ),
//                                   ),
//                                   onPressed: () {},
//                                   child: Text(
//                                     'Try for free',
//                                     style: GoogleFonts.nunito(
//                                       fontSize: 12.0,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//            pt 2
//                   Container(
//                     height: 600.0,
//                     width: MediaQuery.of(context).size.width,
//                     color: Colors.black, //white
//                     child: Stack(
//                       children: [
//                         Align(
//                           child: Column(
//                             children: [
//                               Text(
//                                 'Be in the community',
//                                 style: GoogleFonts.nunito(
//                                   fontWeight: FontWeight.w800,
//                                   fontSize: 25.0,
//                                 ),
//                               ),
//                               Text(
//                                 'Meet New people and leave testimonials about your teammates',
//                                 style: GoogleFonts.nunito(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: 14.0,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         AnimatedAlign(
//                           duration: Duration(milliseconds: 500),
//                           alignment: pixels >= 1200
//                               ? Alignment(0.0, 0.0)
//                               : Alignment(-0.2, 0.0),
//                           child: AnimatedOpacity(
//                             opacity: pixels >= 1200 ? 1.0 : 0.0,
//                             duration: Duration(milliseconds: 500),
//                             child: Container(
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 children: [
//                                   Stack(
//                                     clipBehavior: Clip.none,
//                                     children: [
//                                       Positioned(
//                                         left: -70.0,
//                                         top: -60.0,
//                                         child: Icon(
//                                           Icons.format_quote,
//                                           color: Colors.grey[300],
//                                           size: 150.0,
//                                         ),
//                                       ),
//                                       Text(
//                                         'Excellent',
//                                         style: GoogleFonts.nunito(
//                                           fontWeight: FontWeight.w800,
//                                           fontSize: 30.0,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(
//                                     height: 20.0,
//                                   ),
//                                   Container(
//                                     width: 360.0,
//                                     child: Text(
//                                       'To the Freelancer, I found a team for a project during one i met new cool specialist, and project management has become much faster and simpler',
//                                       style: GoogleFonts.nunito(
//                                         fontWeight: FontWeight.w600,
//                                         fontSize: 14.0,
//                                       ),
//                                       textAlign: TextAlign.center,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 10.0,
//                                   ),
//                                   Text(
//                                     'Comment detail',
//                                     style: GoogleFonts.nunito(
//                                       fontWeight: FontWeight.w800,
//                                       fontSize: 14.0,
//                                     ),
//                                   ),
//                                   Container(
//                                     height: 1.5,
//                                     width: 100.0,
//                                     color: Colors.black87,
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         TestimonialTile(
//                           image:
//                               'https://images.unsplash.com/photo-1565623006066-82f23c79210b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
//                           left: 780.0,
//                           top: pixels >= 1000 ? 100.0 : 130.0,
//                           leftalign: false,
//                         ),
//                         TestimonialTile(
//                           image:
//                               'https://images.unsplash.com/photo-1612282131293-37332d3cea00?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1995&q=80',
//                           left: 840.0,
//                           top: pixels >= 1200 ? 400.0 : 430.0,
//                           leftalign: false,
//                         ),
//                         TestimonialTile(
//                           image:
//                               'https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',
//                           left: 440.0,
//                           top: pixels >= 1300 ? 450.0 : 480.0,
//                           leftalign: true,
//                         ),
//                         Positioned(
//                           right: 350.0,
//                           top: 200.0,
//                           child: Container(
//                             height: 20.0,
//                             width: 20.0,
//                             decoration: BoxDecoration(
//                               color: Colors.red[600],
//                               borderRadius: BorderRadius.circular(60.0),
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 20.0,
//                                   offset: Offset(0.0, 10.0),
//                                   color: Colors.black12,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),

//                         //rest two also same only positions and size and color changes....
//                         Positioned(
//                           right: 200.0,
//                           top: 250.0,
//                           child: Container(
//                             height: 60.0,
//                             width: 60.0,
//                             decoration: BoxDecoration(
//                               color: Colors.amber,
//                               borderRadius: BorderRadius.circular(60.0),
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 20.0,
//                                   offset: Offset(0.0, 10.0),
//                                   color: Colors.black12,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           right: 250.0,
//                           top: 450.0,
//                           child: Container(
//                             height: 30.0,
//                             width: 30.0,
//                             decoration: BoxDecoration(
//                               color: Color(0xff373e98),
//                               borderRadius: BorderRadius.circular(60.0),
//                               boxShadow: [
//                                 BoxShadow(
//                                   blurRadius: 20.0,
//                                   offset: Offset(0.0, 10.0),
//                                   color: Colors.black12,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width,
//                     height: 600.0,
//                     color: Color(0xff373e98),
//                     child: Stack(
//                       clipBehavior: Clip.none,
//                       children: [
//                         AnimatedAlign(
//                           duration: Duration(milliseconds: 500),
//                           alignment: pixels >= 1600
//                               ? Alignment(0.0, 1.0)
//                               : Alignment(-0.2, 1.0),
//                           child: AnimatedOpacity(
//                             opacity: pixels >= 1600 ? 1.0 : 0.0,
//                             duration: Duration(milliseconds: 500),
//                             child: Container(
//                               height: 600.0,
//                               width: 400.0,
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 children: [
//                                   SizedBox(
//                                     height: 80.0,
//                                   ),
//                                   Text(
//                                     'Get Started Today',
//                                     style: GoogleFonts.josefinSans(
//                                       fontWeight: FontWeight.w500,
//                                       letterSpacing: 1.0,
//                                       fontSize: 35.0,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 20.0,
//                                   ),
//                                   Text(
//                                     'Freelancer - Community of people who values their time',
//                                     style: GoogleFonts.nunito(
//                                       color: Colors.white,
//                                       fontWeight: FontWeight.w600,
//                                       fontSize: 14.0,
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 30.0,
//                                   ),
//                                   Row(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       TextButton(
//                                         onPressed: () {},
//                                         child: TextButton(
//                                           style: TextButton.styleFrom(
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(40.0),
//                                             ),
//                                             backgroundColor: Colors.white,
//                                             padding: EdgeInsets.all(0.0),
//                                           ),
//                                           onPressed: () {},
//                                           child: Container(
//                                             padding: EdgeInsets.symmetric(
//                                               horizontal: 30.0,
//                                               vertical: 12.0,
//                                             ),
//                                             decoration: BoxDecoration(
//                                               borderRadius:
//                                                   BorderRadius.circular(40.0),
//                                               border: Border.all(
//                                                 color: Colors.white,
//                                               ),
//                                             ),
//                                             child: Text(
//                                               'Get My Price',
//                                               style: GoogleFonts.josefinSans(
//                                                 color: Color(0xff373e98),
//                                                 fontSize: 12.0,
//                                                 fontWeight: FontWeight.w800,
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         width: 20.0,
//                                       ),
//                                       TextButton(
//                                         style: TextButton.styleFrom(
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius:
//                                                 BorderRadius.circular(40.0),
//                                           ),
//                                           //color: Colors.white,
//                                           padding: EdgeInsets.all(0.0),
//                                         ),
//                                         onPressed: () {},
//                                         child: Container(
//                                           padding: EdgeInsets.symmetric(
//                                             horizontal: 30.0,
//                                             vertical: 12.0,
//                                           ),
//                                           decoration: BoxDecoration(
//                                             borderRadius:
//                                                 BorderRadius.circular(40.0),
//                                             border: Border.all(
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                           child: Text(
//                                             'Try for free',
//                                             style: GoogleFonts.josefinSans(
//                                               color: Colors.white,
//                                               fontSize: 12.0,
//                                               fontWeight: FontWeight.w800,
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 0.0,
//                           child: Footer(),
//                         ),
//                         Align(
//                           alignment: Alignment(1.18, 0.0),
//                           child: Container(
//                             height: 200.0,
//                             width: 200.0,
//                             decoration: BoxDecoration(
//                               color: Colors.amber[400],
//                               borderRadius: BorderRadius.circular(100.0),
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black12,
//                                   blurRadius: 10.0,
//                                   offset: Offset(0.0, 5.0),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),