import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bootstrap/flutter_bootstrap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/mobile/navigation/nav_drawer.dart';
import 'package:sponsorgenix/web/widgets/social_buttons_web.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsMobile extends StatefulWidget {
  const AboutUsMobile({Key? key}) : super(key: key);

  @override
  State<AboutUsMobile> createState() => _AboutUsMobileState();
}

class _AboutUsMobileState extends State<AboutUsMobile> {
  // bool condition = false;
  // double height = 0;

  ScrollController _controller = ScrollController();
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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("About Us"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SingleChildScrollView(
        controller: _controller,
        child: Container(
          color: Colors.black,
          height: size.height * 2.3,
          width: size.width,
          child: Stack(
            alignment: Alignment.topCenter,
            fit: StackFit.expand,
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    const SizedBox(
                      height: 5,
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
                    Container(
                      height: size.height * 0.65,
                      width: size.width,
                      child: Image.asset(
                        "assets/images/ABOUTSX.png",
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text(
                      "What is Sponsorgenix?",
                      style: GoogleFonts.poppins(
                          fontSize: 25.0,
                          color: Color.fromARGB(255, 2, 255, 234),
                          fontWeight: FontWeight.w500),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: AutoSizeText(
                        "We are Sponsorgenix. It's a creative company. Currently helping startups, personal brands and businesses to build, grow & manage their online presence. Our Services includes: website and cross platform application building, UI/UX designing, brand assets designing, poster and billboard designing, ads designing, content creation, social media handling, digital marketing and finally managing the backend of websites.",
                        maxLines: 7,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: GoogleFonts.poppins(
                            fontSize: 16.0,
                            color: Colors.white70,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        width: size.width,
                        height: 1.0,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: CvCard(
                        text1: "Co-founders : ",
                        text2: "Suprava Saha, Sagnik Sanyal",
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: CvCard(
                        text1: "Mail : ",
                        text2: "contact@sponsorgenix.in",
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.02,
                        ),
                        Text(
                          "Connect with us on :",
                          style: GoogleFonts.poppins(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: size.width * 0.05,
                        ),
                        _socialbuttons(
                            url: "https://www.instagram.com/sponsorgenix",
                            child:
                                Image.asset("assets/images/Instagram_3d.png")),
                        const SizedBox(
                          width: 5,
                        ),
                        _socialbuttons(
                          url: "https://twitter.com/sponsorgenix",
                          child: Image.asset("assets/images/Twitter_3d.png"),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        _socialbuttons(
                            url:
                                "https://www.linkedin.com/company/sponsorgenix/",
                            child: Image.asset("assets/images/LinkedIn_3d.png"))
                      ],
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    Text(
                      "     Services we offer ",
                      style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "  Our Services",
                      style: GoogleFonts.poppins(
                          fontSize: 46.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text("Coming Soon...")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _socialbuttons({required String url, required Image child}) {
    return IconButton(
      padding: EdgeInsets.all(0),
      onPressed: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Something went wrong, try again later")));
        }
      },
      icon: child,
      iconSize: 25,
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

class CvCard extends StatelessWidget {
  final String text1;
  final String text2;
  const CvCard({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            text1,
            maxLines: 1,
            style: GoogleFonts.poppins(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.w400),
          ),
          Text(
            text2,
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
