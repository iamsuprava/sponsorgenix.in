import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'package:sponsorgenix/constants.dart';
import 'package:sponsorgenix/web/widgets/social_buttons_web.dart';

class HeaderSectionWeb extends StatefulWidget {
  final double pixels;
  final Widget down_key;
  const HeaderSectionWeb(
      {Key? key, required this.down_key, required this.pixels})
      : super(key: key);

  @override
  State<HeaderSectionWeb> createState() => _HeaderSectionWebState();
}

List text = [
  "Freelancers",
  "Startups",
  "businesses",
  "Designers",
  "Developers",
];

class _HeaderSectionWebState extends State<HeaderSectionWeb> {
  double width = 180;
  String name = text[0];
  double height = 1500;
  int i = 0;
  late bool condition;

  @override
  void initState() {
    width = 0;
    condition = true;
    super.initState();
    Future.delayed(Duration(milliseconds: 400), () {
      setState(() {
        width = 180;
        height = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/SX.gif"),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                size.width * 0.2, size.height * 0.2, size.width * 0.2, 0),
            child: Image.asset(
              "assets/images/Logo.png",
              filterQuality: FilterQuality.high,
              height: size.height * 0.4,
              width: size.width * 0.55,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                size.width * 0.3, size.height * 0.63, size.width * 0.3, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Helping ",
                  style: GoogleFonts.poppins(
                      fontSize: 31.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeInOut,
                  width: width,
                  onEnd: () {
                    if (i == 5) i = 0;
                    if (width == 0) {
                      name = text[i++];
                    }
                    Future.delayed(Duration(milliseconds: 200), () {
                      setState(() {
                        width == 180 ? width = 0 : width = 180;
                      });
                    });
                  },
                  child: Text(
                    name,
                    softWrap: false,
                    style: GoogleFonts.poppins(
                        fontSize: 31.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
                Container(
                  height: 29.0,
                  width: 2.0,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                size.width * 0.95, size.height * 0.73, 0, size.height * 0.02),
            child: Container(
              height: size.height * 0.25,
              width: size.width * 0.05,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SocialButtons(
                    child: Image.asset(
                      "assets/images/Instagram_3d.png",
                    ),
                    url: "https://www.instagram.com/sponsorgenix",
                  ),
                  Spacer(),
                  SocialButtons(
                      url: "https://twitter.com/sponsorgenix",
                      child: Image.asset("assets/images/Twitter_3d.png")),
                  Spacer(),
                  SocialButtons(
                    url: "https://www.instagram.com/sponsorgenix",
                    child: Image.asset(
                      "assets/images/LinkedIn_3d.png",
                    ),
                  )
                ],
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.fromLTRB(size.width * 0.03, size.height * 0.5,
          //       size.width * 0.4, size.height * 0.2),
          //   child: RotatedBox(
          //     quarterTurns: 1,
          //     child: Row(
          //       children: [
          //         Text(
          //           "sponsorgenix@gmail.com",
          //           style: GoogleFonts.poppins(
          //               fontSize: 16.0,
          //               fontWeight: FontWeight.w400,
          //               color: Colors.white),
          //         ),
          //         SizedBox(
          //           height: size.height * 0.05,
          //         ),
          //         Text(
          //           " | 2022",
          //           style: GoogleFonts.poppins(
          //               fontSize: 16.0,
          //               fontWeight: FontWeight.w400,
          //               color: Colors.white),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Positioned(
            left: size.width / 2,
            bottom: 0,
            child: Visibility(
                visible: widget.pixels >= size.height * 0.65 ? false : true,
                child: widget.down_key),
          ),
        ],
      ),
    );
  }
}

// Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(
//             height: size.height * 0.12,
//           ),
//           Image.asset(
//             "assets/images/Logo.png",
//             filterQuality: FilterQuality.high,
//             height: size.height * 0.4,
//             width: size.width * 0.6,
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Helping ",
//                       style: GoogleFonts.poppins(
//                           fontSize: 31.0,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.white),
//                     ),
//                     AnimatedContainer(
//                       duration: Duration(milliseconds: 1000),
//                       curve: Curves.easeInOut,
//                       width: width,
//                       onEnd: () {
//                         if (i == 3) i = 0;
//                         if (width == 0) {
//                           name = text[i++];
//                         }
//                         Future.delayed(Duration(milliseconds: 200), () {
//                           setState(() {
//                             width == 180 ? width = 0 : width = 180;
//                           });
//                         });
//                       },
//                       child: Text(
//                         name,
//                         softWrap: false,
//                         style: GoogleFonts.poppins(
//                             fontSize: 31.0,
//                             fontWeight: FontWeight.w500,
//                             color: Colors.white),
//                       ),
//                     ),
//                     Container(
//                       height: 29.0,
//                       width: 2.0,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//           Padding(
//             padding: EdgeInsets.only(bottom: 25.0),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.only(left: 25.0),
                  // child: 
//                 ),
//                 Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 25.0),
//                   child: Column(
//                     children: [
//                       SocialButtons(
//                         child: Image.asset("assets/images/Instagram_3d.png"),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       SocialButtons(
//                           child: Image.asset("assets/images/Twitter_3d.png")),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       SocialButtons(
//                           child: Image.asset("assets/images/LinkedIn_3d.png"))
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   width: 40.0,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),