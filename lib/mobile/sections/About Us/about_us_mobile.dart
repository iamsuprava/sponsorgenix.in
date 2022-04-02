import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/mobile/navigation/nav_drawer.dart';
import 'package:sponsorgenix/web/widgets/social_buttons_web.dart';

class AboutUsMobile extends StatefulWidget {
  const AboutUsMobile({Key? key}) : super(key: key);

  @override
  State<AboutUsMobile> createState() => _AboutUsMobileState();
}

class _AboutUsMobileState extends State<AboutUsMobile> {
  // bool condition = false;
  // double height = 0;

  ScrollController controller = ScrollController();
  // @override
  // void initState() {
  //   super.initState();
  //   setState(() {
  //     condition = false;
  //     height = 1500;
  //     Future.delayed(Duration(milliseconds: 400), () {
  //       setState(() {
  //         height = 0;
  //       });
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("About Us"),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        controller: controller,
        //physics: NeverScrollableScrollPhysics(),
        child: Container(
          color: Colors.black,
          height: size.height * 1.5,
          width: size.width,
          child: Stack(fit: StackFit.expand, children: [
            Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Get to know us",
                  style: GoogleFonts.poppins(
                      fontSize: 15.0,
                      color: Colors.white70,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "WHO WE ARE",
                  style: GoogleFonts.poppins(
                      fontSize: 46.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 40.0,
                ),
                BootstrapRow(
                  height: 600,
                  children: [
                    // BootstrapCol(
                    //   sizes: 'col-md-12 col-lg-4 col-sm-12',
                    //   child: MediaQuery.of(context).size.width < 992
                    //       ? CircleAvatar(
                    //           backgroundImage: NetworkImage(
                    //               "https://images.pexels.com/photo/man-holding-ice-cream-cone-under-cloud-1262302.jpg&fm=jpg"),
                    //           radius: MediaQuery.of(context).size.width * 0.2)
                    //       : Container(
                    //           height: 500,
                    //           child: Image.asset('assets/images/ABOUTSX.png',
                    //               height: size.height * 0.9,
                    //               filterQuality: FilterQuality.high),

                    //           //fit: BoxFit.cover,
                    //         ),
                    // ),
                    // BootstrapCol(
                    //   sizes: 'col-md-12 col-lg-4 col-sm-12',
                    //   child: MediaQuery.of(context).size.width < 992
                    //       ? CircleAvatar(
                    //           radius: MediaQuery.of(context).size.width * 0.2)
                    //       : Container(
                    //           child: Image.asset('assets/images/ABOUTSX.png',
                    //               height: size.height * 0.9,
                    //               filterQuality: FilterQuality.high),
                    //           alignment: Alignment.center,
                    //         ),
                    // ),
                    BootstrapCol(
                      sizes: 'col-md-12 col-lg-8 col-sm-12',
                      child: Container(
                        height: 692.0, //570.0
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // MediaQuery.of(context).size.width > 992
                            //     ? Container()
                            //     : SizedBox(
                            //         height: 35.0,
                            //       ),
                            Container(
                              child: Image.asset('assets/images/ABOUTSX.png',
                                  height: size.height * 0.9,
                                  filterQuality: FilterQuality.high),
                              alignment: Alignment.center,
                            ),

                            Text(
                              "What is Sponsorgenix?",
                              style: GoogleFonts.poppins(
                                  fontSize: 25.0,
                                  color: Color.fromARGB(255, 2, 255, 234),
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            AutoSizeText(
                              "Sponsorgenix",
                              maxLines: 2,
                              style: GoogleFonts.poppins(
                                  fontSize: 33.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            AutoSizeText(
                              "We are Sponsorgenix. It's a creative company. Currently helping startups, personal brands and businesses to build, grow & manage their online presence. Our Services includes: website and cross platform application building, UI/UX designing, brand assets designing, poster and billboard designing, ads designing, content creation, social media handling, digital marketing and finally managing the backend of websites.",
                              maxLines: 5,
                              style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 25.0,
                            ),
                            Container(
                              width: double.maxFinite,
                              height: 2.0,
                              color: Colors.white70,
                            ),

                            Cvcard(
                              text1: "Co-founders : ",
                              text2: "Suprava Saha, Sagnik Sanyal",
                            ),
                            const Spacer(),
                            Cvcard(
                              text1: "Mail : ",
                              text2: "contact@sponsorgenix.in",
                            ),

                            const SizedBox(
                              height: 35.0,
                            ),

                            Container(
                              height: 45,
                              width: 200,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                color: Color.fromARGB(255, 2, 255, 234),
                              ),
                              child: Center(
                                child: Text(
                                  "Connect with Us",
                                  style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                            Row(children: [
                              SocialButtons(
                                  url: "https://www.instagram.com/sponsorgenix",
                                  child: Image.asset(
                                      "assets/images/Instagram_3d.png")),
                              SizedBox(
                                height: 10,
                              ),
                              SocialButtons(
                                url: "https://twitter.com/sponsorgenix",
                                child:
                                    Image.asset("assets/images/Twitter_3d.png"),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SocialButtons(
                                  url: "https://www.instagram.com/sponsorgenix",
                                  child: Image.asset(
                                      "assets/images/LinkedIn_3d.png")),
                              SizedBox(
                                width: 15.0,
                              ),
                            ]),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 40,
                                  ),
                                  Text(
                                    "     Services we offer ",
                                    style: GoogleFonts.poppins(
                                        fontSize: 15.0,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    "  Our Services",
                                    style: GoogleFonts.poppins(
                                        fontSize: 46.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 25.0,
                                  ),
                                ],
                              ),
                            ),

                            //                               // Icon(
                            //                               //   AntDesign.github,
                            //                               //   color: Colors.white70,
                            //                               //   size: 18.0,
                            //                               // ),
                            //                               // SizedBox(
                            //                               //   width: 15.0,
                            //                               // ),
                            //                               // Icon(
                            //                               //   AntDesign.instagram,
                            //                               //   color: Colors.white70,
                            //                               //   size: 18.0,
                            //                               // ),
                            //                             ],
                            //                           )
                            //                         : Container(),
                            //                   ],
                            //                 )
                            //               ],
                            //             ),
                            //           ),
                            //         )
                            //       ]),
                            //       Align(
                            //         alignment: Alignment.centerLeft,
                            //         child: Column(
                            //           crossAxisAlignment: CrossAxisAlignment.start,
                            //           children: [
                            //             SizedBox(
                            //               height: 40,
                            //             ),
                            //             Text(
                            //               "     Services we offer ",
                            //               style: GoogleFonts.poppins(
                            //                   fontSize: 15.0,
                            //                   color: Colors.white70,
                            //                   fontWeight: FontWeight.w400),
                            //             ),
                            //             SizedBox(
                            //               height: 8.0,
                            //             ),
                            //             Text(
                            //               "  Our Services",
                            //               style: GoogleFonts.poppins(
                            //                   fontSize: 46.0,
                            //                   fontWeight: FontWeight.w700,
                            //                   color: Colors.white),
                            //             ),
                            //             SizedBox(
                            //               height: 25.0,
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //       BootstrapRow(height: 300, children: [
                            //         BootstrapCol(
                            //           sizes: 'col-sm-12 col-md-12 col-lg-6',
                            //           child: ServiceCard(
                            //             icon: Icons.sanitizer_rounded,
                            //             head: "Design Trends",
                            //             sub: "Details coming soon..",
                            //           ),
                            //         ),
                            //         BootstrapCol(
                            //           sizes: 'col-sm-12 col-md-12 col-lg-6',
                            //           child: ServiceCard(
                            //             icon: Icons.book_rounded,
                            //             head: "PSD Design",
                            //             sub: "Details coming soon..",
                            //           ),
                            //         ),
                            //         BootstrapCol(
                            //           sizes: 'Alpha',
                            //           child: ServiceCard(
                            //             icon: Icons.thumbs_up_down_rounded,
                            //             head: "Customer Support",
                            //             sub: "Details coming soon..",
                            //           ),
                            //         ),
                            //         BootstrapCol(
                            //           sizes: 'col-sm-12 col-md-12 col-lg-6',
                            //           child: ServiceCard(
                            //             icon: Icons.laptop_chromebook_rounded,
                            //             head: "Web Development",
                            //             sub: "Details coming soon..",
                            //           ),
                            //         ),
                            //         BootstrapCol(
                            //           sizes: 'col-sm-12 col-md-12 col-lg-6',
                            //           child: ServiceCard(
                            //             icon: Icons.facebook_rounded,
                            //             head: "Fully Responsive",
                            //             sub: "Details coming soon..",
                            //           ),
                            //         ),
                            //         BootstrapCol(
                            //           sizes: 'col-sm-12 col-md-12 col-lg-6',
                            //           child: ServiceCard(
                            //             icon: Icons.pie_chart_outline_rounded,
                            //             head: "Branding",
                            //             sub: "Details coming soon..",
                            //           ),
                            //         ),
                            //       ]),
                            //       Align(
                            //         alignment: Alignment.centerLeft,
                            //         child: Column(
                            //           crossAxisAlignment: CrossAxisAlignment.start,
                            //           children: [
                            //             SizedBox(
                            //               height: 40,
                            //             ),
                            //             Text(
                            //               "     Get started with our services",
                            //               style: GoogleFonts.poppins(
                            //                   fontSize: 15.0,
                            //                   color: Colors.white70,
                            //                   fontWeight: FontWeight.w400),
                            //             ),
                            //             SizedBox(
                            //               height: 8.0,
                            //             ),
                            //             Text(
                            //               "  Choose a Plan",
                            //               style: GoogleFonts.poppins(
                            //                   fontSize: 46.0,
                            //                   fontWeight: FontWeight.w700,
                            //                   color: Colors.white),
                            //             ),
                            //             SizedBox(
                            //               height: 25.0,
                            //             ),
                            //             Align(
                            //               alignment: Alignment.center,
                            //               child: Container(
                            //                 width: MediaQuery.of(context).size.width < 700
                            //                     ? MediaQuery.of(context).size.width * 0.6
                            //                     : MediaQuery.of(context).size.width * 0.9,
                            //                 child: BootstrapRow(
                            //                   height: 500,
                            //                   children: [
                            //                     BootstrapCol(
                            //                       sizes: 'col-sm-12 col-md-12 col-lg-4',
                            //                       child: PlanCard(
                            //                         icon: Icons.language,
                            //                         btext: "Get Started",
                            //                       ),
                            //                     ),
                            //                     BootstrapCol(
                            //                       sizes: 'col-sm-12 col-md-12 col-lg-4',
                            //                       child: PlanCard(
                            //                         icon: Icons.person_rounded,
                            //                         btext: "Get pro",
                            //                       ),
                            //                     ),
                            // BootstrapCol(
                            //   sizes: 'col-sm-12 col-md-12 col-lg-4',
                            //   child: PlanCard(
                            //     icon: Icons.sanitizer_rounded,
                            //     btext: "Get Started",
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                //  )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class PlanCard extends StatefulWidget {
  final IconData icon;
  final String btext;
  PlanCard({required this.btext, required this.icon}); //required this.icon
  @override
  _PlanCardState createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      height: 550,
      color: Color(0xff161616),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon(
          //   widget.icon,
          //   color: Color(0xff009e66),
          //   size: 75.0,
          // ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            "Mobile App Design",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Responsive Design",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Database Development",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Web Design",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "24/7 Support",
            style: GoogleFonts.poppins(
                fontSize: 18.0,
                fontWeight: FontWeight.w300,
                color: Colors.white70),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            height: 40.0,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color:
                  Color.fromARGB(255, 2, 255, 234), //fromARGB(255, 2, 255, 234)
            ),
            child: Center(
              child: Text(
                widget.btext,
                style: GoogleFonts.poppins(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatefulWidget {
  final IconData icon;
  final String head;
  final String sub;

  ServiceCard({
    required this.head,
    required this.icon,
    required this.sub,
  });
  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  bool hover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      // onEnter: (value) {
      //   setState(() {
      //     hover = true;
      //     print("true");
      //   });
      // },
      // onExit: (value) {
      //   setState(() {
      //     hover = false;
      //     print("false");
      //   });
      // },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.black45,
                    offset: Offset(-1, 1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5)
              ],
              color: Color(0xff161616),
            ),
            margin: EdgeInsets.only(bottom: 50.0),
            height: 230,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 35.0, right: 35, bottom: 30, top: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        widget.icon,
                        color: Colors.white,
                        size: 50,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        widget.head,
                        style: GoogleFonts.poppins(
                            fontSize: 21.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        widget.sub,
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                AnimatedContainer(
                  duration: Duration(milliseconds: 170),
                  curve: Curves.easeInOut,
                  height: 2.0,
                  color: !hover
                      ? Color(0xff161616)
                      : Color.fromARGB(255, 2, 255, 234),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Cvcard extends StatefulWidget {
  final String text1;
  final String text2;
  Cvcard({required this.text2, required this.text1});
  @override
  _CvcardState createState() => _CvcardState();
}

class _CvcardState extends State<Cvcard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            widget.text1,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
          Text(
            widget.text2,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Color.fromARGB(255, 2, 255, 234),
                fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
