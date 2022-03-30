import 'package:flutter/material.dart';
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
          )
        ],
      ),
    );
  }
}
