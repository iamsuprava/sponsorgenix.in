import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/constants.dart';
import 'package:sponsorgenix/web/src/About.dart';
import 'package:sponsorgenix/web/widgets/hire_us_button.dart';

class HomeServicesWeb extends StatelessWidget {
  final double pixels;
  const HomeServicesWeb({Key? key, required this.pixels}) : super(key: key);

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
            child: AnimatedOpacity(
              opacity: pixels >= size.height * 1.5 ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 700),
              child: Container(
                child: Image.asset('assets/images/A2.png',
                    height: size.height, filterQuality: FilterQuality.high),
                alignment: Alignment.center,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 700),
            left: pixels >= size.height * 1.5 ? size.width * 0.02 : -300,
            top: size.height * 0.25,
            bottom: size.height * 0.2,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 700),
              opacity: pixels >= size.height * 1.5 ? 1.0 : 0.0,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
          ),
        ],
      ),
    );
  }
}
