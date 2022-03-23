import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/constants.dart';
import 'package:sponsorgenix/web/src/About.dart';
import 'package:sponsorgenix/web/widgets/hire_us_button.dart';

class HomeServicesWeb extends StatefulWidget {
  const HomeServicesWeb({Key? key}) : super(key: key);

  @override
  State<HomeServicesWeb> createState() => _HomeServicesWebState();
}



class _HomeServicesWebState extends State<HomeServicesWeb> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/bg_img_2.png",
            ),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            child: Container(
              child: Image.asset('assets/images/A2.png',
                  height: size.height, filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                30, size.height * 0.25, 0, size.height * 0.2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Text(
                      "Services",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: kDefaultFontFamily,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "A brand guidelines agency gives a wholesome identity to a brand-\n starting from understanding and analysing the market,\nto actually devising a logo, tone of voice, look and feel,\n visual tone and packaging. Whatever growth trajectory you wish for your brand\n, a branding company is there to help you out with that!",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      //style: TextStyle(fontWeight: FontWeight.bold),
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    //add here
                    HoverEffectButton(
                      child: FittedBox(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => About()));
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Image.asset(
                                  "assets/images/hand.png",
                                  height: 25,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Hire Us",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: kDefaultFontFamily,
                                    fontWeight: FontWeight.w100,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
