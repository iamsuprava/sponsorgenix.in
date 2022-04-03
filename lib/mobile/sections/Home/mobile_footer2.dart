import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../web/sections/TestimonialTile.dart';

class MobileFooter2 extends StatefulWidget {
  final double pixels;
  const MobileFooter2({Key? key, required this.pixels}) : super(key: key);

  @override
  State<MobileFooter2> createState() => _HomeFooter3State();
}

class _HomeFooter3State extends State<MobileFooter2> {
  @override
  Widget build(BuildContext context) {
    //check this out
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      height: size.height / 1.3,
      width: size.width,
      child: Stack(
        children: [
          Align(
            child: Column(
              children: [
                Text(
                  'Be in the community',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w800,
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  'Meet New people and leave testimonials about your teammates',
                  style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                AnimatedAlign(
                  alignment: widget.pixels >= size.height * 2.5
                      ? const Alignment(0.0, 0.0)
                      : const Alignment(-0.2, 0.0),
                  duration: Duration(milliseconds: 500),
                  child: AnimatedOpacity(
                    opacity: widget.pixels >= size.height * 2.5 ? 1.0 : 0.0,
                    duration: Duration(milliseconds: 500),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: -70.0,
                              top: -60.0,
                              child: Icon(
                                Icons.format_quote,
                                color: Colors.grey[700], //grey[300]
                                size: 150.0,
                              ),
                            ),
                            Text(
                              'Excellent',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w800,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: 360.0,
                          child: Text(
                            'To the Freelancer, I found a team for a project during one i met new cool specialist, and project management has become much faster and simpler',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Comment detail',
                          style: GoogleFonts.nunito(
                            fontWeight: FontWeight.w800,
                            fontSize: 14.0,
                          ),
                        ),
                        Container(
                          height: 1.5,
                          width: 100.0,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          TestimonialTile(
            image:
                'https://images.unsplash.com/photo-1565623006066-82f23c79210b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2134&q=80',
            left: 250.0,
            top: widget.pixels >= size.height * 4.5 ? 100.0 : 130.0,
            leftalign: false,
          ),
          TestimonialTile(
            image:
                'https://images.unsplash.com/photo-1612282131293-37332d3cea00?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1995&q=80',
            left: 380.0,
            top: widget.pixels >= size.height * 4.5 ? 400.0 : 430.0,
            leftalign: false,
          ),
          TestimonialTile(
            image:
                'https://images.unsplash.com/photo-1492633423870-43d1cd2775eb?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80',
            left: 140.0,
            top: widget.pixels >= size.height * 4.5 ? 450.0 : 480.0,
            leftalign: true,
          ),
        ],
      ),
    );
  }
}
