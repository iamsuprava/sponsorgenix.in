import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/web/widgets/animated_lottie_explore_button.dart';
import 'package:sponsorgenix/web/widgets/floating_cubes.dart';

import '../../src/About.dart';

class HomeDiscoverUsWeb extends StatelessWidget {
  const HomeDiscoverUsWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/bkg_01.png",
            ),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            left: size.width * 0.15,
            bottom: 0,
            child: Container(
              child: Image.asset('assets/images/A1.png',
                  height: size.height * 0.9, filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),
          Positioned(
              left: 0,
              top: size.height * 0.3,
              child: const FloatingCubes(
                  assetLink: "assets/images/Floating_Cube_01.riv")),
          Positioned(
            right: size.width * 0.42,
            bottom: size.height * 0.14,
            child: const FloatingCubes(
              assetLink: "assets/images/Floating_cube_02.riv",
            ),
          ),
          Positioned(
            left: 800.0,
            bottom: 200,
            child: Column(
              children: [
                Text(
                  "Discover Us",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunito(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700, //w700
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                    "Welcome to Sponsorgenix.\nComplete branding solutions & design\n services company across India.\nIt’s a creative company currently helping startups,\npersonal brands and businesses to build grow & \nmanage their online  presence.",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    //style: TextStyle(fontWeight: FontWeight.bold),
                    style: GoogleFonts.nunito(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400, //w700
                    )),
                SizedBox(
                  height: 30.0,
                ),
                AnimatedLottieButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
