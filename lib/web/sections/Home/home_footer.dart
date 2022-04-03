import 'package:flutter/material.dart';
import 'package:sponsorgenix/web/sections/InfoPalette.dart';

class HomeFooter extends StatefulWidget {
  final double pixels;
  const HomeFooter({Key? key, required this.pixels}) : super(key: key);

  @override
  State<HomeFooter> createState() => _HomeFooterState();
}

class _HomeFooterState extends State<HomeFooter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height / 2,
      width: size.width,
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("How it works ?"),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedOpacity(
                    duration: const Duration(milliseconds: 500),
                    opacity: widget.pixels >= (size.height * 3.23) ? 1.0 : 0.0,
                    child: AnimatedPadding(
                      duration: const Duration(milliseconds: 500),
                      padding: EdgeInsets.only(
                          left:
                              widget.pixels >= (size.height * 3.23) ? 100 : 0),
                      child: InfoPalette(
                          text: "Community",
                          title: "Communicate with friends",
                          icon: Icons.people_alt_rounded),
                    ),
                  ),
                  InfoPalette(
                    title: 'Overview Reports',
                    text:
                        'Track your progress thanks to the reporting system right inside the platform.',
                    icon: Icons.pie_chart_rounded,
                  ),
                  InfoPalette(
                    title: 'Dashboard',
                    text:
                        'Manage your projects and tasks by tracking activity on the dashboard.',
                    icon: Icons.person_rounded,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
