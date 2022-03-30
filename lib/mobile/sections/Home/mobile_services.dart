import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';

class MobileServices extends StatelessWidget {
  const MobileServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.75,
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
        fit: StackFit.expand,
        children: [
          Positioned(
            right: 0,
            child: Container(
              child: Image.asset('assets/images/A2.png',
                  height: size.height * 0.75,
                  width: size.width * 0.3,
                  filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),
          Container(
            height: size.height * 0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Services",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontFamily: kDefaultFontFamily,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "A brand guidelines agency gives a wholesome identity to a brand-\n starting from understanding and analysing the market,\nto actually devising a logo, tone of voice, look and feel,\n visual tone and packaging. Whatever growth trajectory you wish for your brand\n, a branding company is there to help you out with that !",
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
