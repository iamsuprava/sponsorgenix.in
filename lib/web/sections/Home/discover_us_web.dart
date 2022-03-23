import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            left: 80,
            child: Container(
              child: Image.asset('assets/images/A1.png',
                  height: 750, filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            left: 110,
            top: 80,
            child: Container(
              child: Image.asset('assets/images/Cube1.png',
                  height: 258.32, filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),
          Positioned(
            right: 600,
            bottom: 40,
            child: Container(
              child: Image.asset('assets/images/Cube2.png',
                  height: 258.32, filterQuality: FilterQuality.high),
              alignment: Alignment.center,
            ),
          ),
          // Positioned(
          //   left: 800.0,
          //   bottom: 420,
          //   child: Text("Discover Us",
          //       textAlign: TextAlign.left,
          //       overflow: TextOverflow.ellipsis,
          //       style: GoogleFonts.nunito(
          //         fontSize: 28.0,
          //         fontWeight: FontWeight.w700, //w700
          //       )),
          // ),
          Positioned(
            left: 800.0,
            bottom: 200,
            child: Column(
              children: [
                Text("Discover Us",
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
                TextButton(
                  child: Text(
                    "Explore",
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
          ),
        ],
      ),
    );
  }
}

class NavButton extends StatefulWidget {
  final String text;
  final Function function;
  NavButton({required this.function, required this.text});
  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.function();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: Text(
          widget.text,
          style: GoogleFonts.poppins(
              fontSize: 15.0, fontWeight: FontWeight.w300, color: Colors.white),
        ),
      ),
    );
  }
}
