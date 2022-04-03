import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../web/sections/InfoPalette.dart';

class FooterMobile extends StatelessWidget {
  final double pixels;
  const FooterMobile({Key? key, required this.pixels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      height: size.height * 0.7,
      width: size.width * 1,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "How it works ?",
                style: GoogleFonts.nunito(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: 14.0,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: pixels >= (size.height * 2.1) ? 1.0 : 0.0,
                    child: AnimatedPadding(
                        duration: const Duration(milliseconds: 500),
                        padding: EdgeInsets.only(
                            left: pixels >= (size.height * 2.1) ? 50 : 0),
                        child: _infoPallete(context,
                            text: "Community",
                            title: "Communicate with friends",
                            icon: Icons.people_alt_rounded)),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: _infoPallete(
                      context,
                      title: 'Overview Reports',
                      text:
                          'Track your progress thanks to the reporting system right inside the platform.',
                      icon: Icons.pie_chart_rounded,
                    ),
                  ),
                  _infoPallete(
                    context,
                    title: 'Dashboard',
                    text:
                        'Manage your projects and tasks by tracking activity on the dashboard.',
                    icon: Icons.person_rounded,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _infoPallete(
    BuildContext context, {
    required IconData icon,
    required String text,
    required String title,
  }) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.45,
      width: size.width * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 0, 0, 0),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Icon(
              icon,
              size: 22.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            title,
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w800,
              fontSize: 14.0,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            child: Text(
              text,
              style: GoogleFonts.nunito(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            'Learn More....',
            style: GoogleFonts.nunito(
              fontWeight: FontWeight.w800,
              fontSize: 14.0,
            ),
          ),
          Container(
            height: 1.5,
            width: 10.0,
            color: Colors.white, //black87
          ),
        ],
      ),
    );
  }
}
