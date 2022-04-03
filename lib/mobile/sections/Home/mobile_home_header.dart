import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileHomeHeader extends StatefulWidget {
  const MobileHomeHeader({Key? key}) : super(key: key);

  @override
  State<MobileHomeHeader> createState() => _MobileHomeHeaderState();
}

List text = [
  "Freelancers",
  "Startups",
  "businesses",
  "Designers",
  "Developers",
];

class _MobileHomeHeaderState extends State<MobileHomeHeader> {
  String name = text[0];
  double width = 130;
  double height = 1500;
  int i = 0;
  late bool condition;
  @override
  void initState() {
    width = 0;
    condition = true;
    super.initState();
    Future.delayed(Duration(milliseconds: 400), () {
      setState(() {
        width = 130;
        height = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height, //* 0.75
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/SX.gif"),
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover),
      ),
      child: Stack(
        children: [
          Positioned(
            left: size.width * 0.25,
            top: size.height * 0.2,
            child: SizedBox(
              height: size.height * 0.2,
              width: size.width * 0.5,
              child: Image.asset(
                "assets/images/Logo.png",
                fit: BoxFit.contain,
                filterQuality: FilterQuality.high,
              ),
            ),
          ),
          Positioned(
            bottom: size.width * 0.12,
            left: size.width * 0.25,
            child: SizedBox(
              height: size.height * 0.2,
              width: size.width * 0.45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Helping ",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.easeInOut,
                    width: width,
                    onEnd: () {
                      if (i == 5) i = 0;
                      if (width == 0) {
                        name = text[i++];
                      }
                      Future.delayed(Duration(milliseconds: 200), () {
                        setState(() {
                          width == 130 ? width = 0 : width = 130;
                        });
                      });
                    },
                    child: Text(
                      name,
                      softWrap: false,
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 25.0,
                    width: 2.0,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
