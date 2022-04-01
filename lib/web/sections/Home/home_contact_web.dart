import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sponsorgenix/web/widgets/animated_lottie_connect_us.dart';

class HomeContactUsWeb extends StatelessWidget {
  final double pixels;
  const HomeContactUsWeb({
    Key? key,
    required this.pixels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/images/home_contact.png",
            ),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            left: size.width * 0.16,
            bottom: size.height * 0.10,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 900),
              opacity: pixels >= size.height * 2.15 ? 1.0 : 0.0,
              child: Container(
                child: Image.asset('assets/images/A3.png',
                    height: size.height * 0.8,
                    filterQuality: FilterQuality.high),
                alignment: Alignment.center,
              ),
            ),
          ),
          Positioned(
            left: size.width * 0.25,
            top: size.height * 0.2,
            child: Container(
              child: Image.asset('assets/images/Cube3.png',
                  height: size.height * 0.21,
                  filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            left: size.width * 0.02,
            bottom: size.height * 0.03,
            child: Container(
              child: Image.asset('assets/images/Cube4.png',
                  width: size.width * 0.58,
                  height: size.height * 0.82,
                  filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 900),
            right: pixels >= size.height * 2.15 ? size.width * 0.05 : -600,
            bottom: size.height * 0.3,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 900),
              opacity: pixels >= size.height * 2.15 ? 1.0 : 0.0,
              child: Column(
                children: [
                  Text("Contact Us",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      //style: TextStyle(fontWeight: FontWeight.bold),
                      style: GoogleFonts.nunito(
                        fontSize: 28.0,
                        fontWeight: FontWeight.w700, //w700
                      )),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                      "We’re ready to talk about your organization\nand your goals—and how we can partner\nyou in this journey.\nJust fill out the form, and we’ll get back to you. \nIf you’d rather talk to a human right away,\nfeel free to give us a call.",
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
                  // TextButton(
                  //   child: Text(
                  //     "Start",
                  //     style: TextStyle(fontSize: 25),
                  //   ),
                  //   onPressed: () {},
                  //   style: TextButton.styleFrom(
                  //       primary: Colors.black,
                  //       elevation: 2,
                  //       backgroundColor: Colors.white),
                  // ),
                  //edit here
                  AnimatedContactUsButton(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
