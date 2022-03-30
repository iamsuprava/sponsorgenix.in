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
      height: size.height * 0.75,
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
          Positioned(
              left: 0,
              top: size.height * 0.3,
              child: const FloatingCubeMini(
                  assetLink: "assets/images/Floating_Cube_01.riv")),
          Positioned(
            right: size.width * 0.42,
            bottom: size.height * 0.14,
            child: const FloatingCubeMini(
              assetLink: "assets/images/Floating_cube_02.riv",
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width * 0.1, size.height * 0.25, 0, 0),
                child: Container(
                  height: size.height * 0.45,
                  child: Image.asset('assets/images/A1.png',
                      fit: BoxFit.contain, filterQuality: FilterQuality.high),
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width * 0.4, size.height * 0.1,
                size.width * 0.05, size.height * 0.1),
            child: Column(
              children: [
                Text(
                  "Discover Us",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunito(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700, //w700
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome to Sponsorgenix.\nComplete branding solutions & design\n services company across India.\nIt’s a creative company currently helping startups,\npersonal brands and businesses to build grow & \nmanage their online  presence.",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.nunito(
                    fontSize: 18.0,
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
