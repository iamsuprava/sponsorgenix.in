import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class MobileHomeHeader extends StatefulWidget {
  final Widget goDown;
  final double pixels;
  const MobileHomeHeader({Key? key, required this.goDown, required this.pixels})
      : super(key: key);

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
  VideoPlayerController? _videoPlayerController;
  String name = text[0];
  double width = 130;
  double height = 1500;
  int i = 0;
  late bool condition;
  @override
  void initState() {
    width = 0;
    condition = true;
    Future.delayed(Duration(milliseconds: 400), () {
      setState(() {
        width = 130;
        height = 0;
      });
    });
    //VideoPlayerWidget
    _videoPlayerController =
        VideoPlayerController.asset("assets/images/Untitled.webm")
          ..setLooping(true)
          ..initialize().then((_) {
            setState(() {});
          });
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      // mutes the video
      _videoPlayerController!.setVolume(0);
      // Plays the video once the widget is build and loaded.
      _videoPlayerController!.play();
    });
    super.initState();
  }

  @override
  void dispose() {
    _videoPlayerController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          SizedBox.expand(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _videoPlayerController!.value.size.width,
                height: _videoPlayerController!.value.size.height,
                child: _videoPlayerController!.value.isInitialized
                    ? VideoPlayer(_videoPlayerController!)
                    : Container(
                        height: size.height,
                        width: size.width,
                        color: Colors.black,
                      ),
              ),
            ),
          ),
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
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 35,
              width: 40,
              child: Visibility(
                  visible: widget.pixels >= 150 ? false : true,
                  child: widget.goDown),
            ),
          ),
        ],
      ),
    );
  }
}
