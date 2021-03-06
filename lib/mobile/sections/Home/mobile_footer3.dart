import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//import '../ProfileTile.dart';

class MobileFooter3 extends StatefulWidget {
  final double pixels;
  const MobileFooter3({Key? key, required this.pixels}) : super(key: key);

  @override
  State<MobileFooter3> createState() => _HomeFooter2State();
}

class _HomeFooter2State extends State<MobileFooter3> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height,
        width: size.width,
        color: Color.fromARGB(255, 0, 0, 0), //grey.shade900
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            // Positioned(
            //   left: -250.0,
            //   child: Container(
            //     height: 150.0,
            //     width: 300.0,
            //     decoration: BoxDecoration(
            //       color: Colors.amber[400],
            //       borderRadius: BorderRadius.circular(400.0),
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        padding: EdgeInsets.only(
                            left:
                                widget.pixels >= (size.height * 3.83) ? 10 : 0),
                        child: AnimatedOpacity(
                          opacity:
                              widget.pixels >= (size.height * 3.83) ? 1.0 : 0,
                          duration: const Duration(milliseconds: 500),
                          child: Container(
                            height: size.height * 0.35,
                            width: size.width * 0.55,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.network(
                              'https://miro.medium.com/max/2400/0*qO2PFu6dr04R1O6P.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        padding: EdgeInsets.only(
                            right:
                                widget.pixels >= (size.height * 3.83) ? 50 : 0),
                        child: AnimatedOpacity(
                          duration: const Duration(milliseconds: 500),
                          opacity:
                              widget.pixels >= (size.height * 3.83) ? 1.0 : 0,
                          child: Container(
                            width: size.width * 0.3,
                            height: size.height * 0.37,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Easy Project Management',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w800,
                                    color: Colors.green,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Manage your project, Organize your own workspace,\nkeep statistics and collaborate with your \nteammates in one place',
                                  style: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
