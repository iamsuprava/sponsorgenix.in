import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/mobile/widgets/floating_cube_mini.dart';

import '../../../web/widgets/floating_cubes.dart';

class MobileDiscoverUs extends StatelessWidget {
  const MobileDiscoverUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.8,
      width: size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/bkg_01.png",
              ),
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover)),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(
                  size.width * 0.01, size.height * 0.3, size.width * 0.7, 0),
              child: const FloatingCubeMini(
                  assetLink: "assets/images/Floating_Cube_01.riv")),
          Padding(
            padding:
                EdgeInsets.fromLTRB(size.width * 0.4, size.height * 0.3, 0, 0),
            child: const FloatingCubeMini(
              assetLink: "assets/images/Floating_cube_02.riv",
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: size.height * 0.4,
              width: size.width * 0.45, //0.45
              child: Image.asset('assets/images/A1.png',
                  fit: BoxFit.contain, filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),

          // Positioned(
          //     left: 0,
          //     top: size.height * 0.3,
          //     child: const FloatingCubeMini(
          //         assetLink: "assets/images/Floating_Cube_01.riv")),
          // Positioned(
          //   right: size.width * 0.20, //0.42
          //   bottom: size.height * 0.14,
          //   child: const FloatingCubeMini(
          //     assetLink: "assets/images/Floating_cube_02.riv",
          //   ),
          // ),
          Positioned(
            right: size.width * 0.07,
            top: size.height * 0.15,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Discover Us",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunito(
                    fontSize: 21.0,
                    fontWeight: FontWeight.w700, //w700
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Welcome to Sponsorgenix.\nComplete branding solutions & \ndesign services company across India.\n It’s a creative company currently helping startups,\n personal brands and businesses to build grow & \n manage their online  presence.",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunito(
                    fontSize: 14.0,
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
