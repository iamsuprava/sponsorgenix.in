import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MobileFooter4 extends StatefulWidget {
  final double pixels;
  const MobileFooter4({Key? key, required this.pixels}) : super(key: key);

  @override
  State<MobileFooter4> createState() => _HomeFooter4State();
}

class _HomeFooter4State extends State<MobileFooter4> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height / 3,
        width: size.width,
        color: Color.fromARGB(255, 1, 7, 94), //0xff373e98
        child: Stack(
          children: [
            Center(
              child: AnimatedPadding(
                  padding: EdgeInsets.only(
                      left: widget.pixels >= size.height * 5.4
                          ? (size.width / 2)
                          : 0),
                  duration: Duration(milliseconds: 800),
                  child: AnimatedOpacity(
                    opacity: widget.pixels >= size.height * 5.4 ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 800),
                    child: Text(
                      'Get Started Today',
                      style: GoogleFonts.josefinSans(
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.0,
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                  )),
            ),
          ],
        ));
  }
}
