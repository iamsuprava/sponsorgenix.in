import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeServicesWeb extends StatelessWidget {
  const HomeServicesWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      // child: Image.asset(
      //   "assets/images/bg_img_2.png",
      //   height: size.height,
      //   width: size.width,
      //   filterQuality: FilterQuality.high,
      //   fit: BoxFit.fill,
      // ),
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
                  height: 874, filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),
          // Positioned(
          //   left: 500.0,
          //   bottom: 420,
          //   child: Text("Services",
          //       textAlign: TextAlign.left,
          //       overflow: TextOverflow.ellipsis,

          //       style: GoogleFonts.nunito(
          //         fontSize: 28.0,
          //         fontWeight: FontWeight.w700, //w700
          //       )),
          // ),
          Positioned(
            right: 500.0,
            bottom: 200,
            child: Column(
              children: [
                Text("Services",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.nunito(
                      fontSize: 28.0,
                      fontWeight: FontWeight.w700, //w700
                    )),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                    "A brand guidelines agency gives a wholesome identity to a brand-\n starting from understanding and analysing the market,\nto actually devising a logo, tone of voice, look and feel,\n visual tone and packaging. Whatever growth trajectory you wish for your brand\n, a branding company is there to help you out with that!",
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
                TextButton(
                  child: Text(
                    "Hire Us",
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      elevation: 2,
                      backgroundColor: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
