import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sponsorgenix/constants.dart';
import 'package:sponsorgenix/web/widgets/social_buttons_web.dart';

class HeaderSectionWeb extends StatefulWidget {
  const HeaderSectionWeb({Key? key}) : super(key: key);

  @override
  State<HeaderSectionWeb> createState() => _HeaderSectionWebState();
}

List navitems = ["Home", "AboutUs", "Services", "ContactUs"];
List text = [
  "Freelancers",
  "Startups",
  "businesses",
  "Designers",
  "Devolepers"
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
      decoration: BoxDecoration(
          //image: DecorationImage(
          //image: AssetImage("assets/images/SX.gif"), fit: BoxFit.cover),
          ),
      child: Center(
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.12,
              ),
              Image.asset(
                "assets/images/Logo.png",
                filterQuality: FilterQuality.high,
                height: size.height * 0.4,
                width: size.width * 0.6,
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
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
                            if (i == 3) i = 0;
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
                  )
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 25.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Row(
                          children: [
                            Text(
                              "sponsorgenix@gmail.com",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              " | 2022",
                              style: GoogleFonts.poppins(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 25.0),
                      child: Column(
                        children: [
                          SocialButtons(
                              child: Image.asset(
                                  "assets/images/Instagram_3d.png")),
                          SizedBox(
                            height: 10,
                          ),
                          SocialButtons(
                              child:
                                  Image.asset("assets/images/Twitter_3d.png")),
                          SizedBox(
                            height: 10,
                          ),
                          SocialButtons(
                              child:
                                  Image.asset("assets/images/LinkedIn_3d.png"))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
