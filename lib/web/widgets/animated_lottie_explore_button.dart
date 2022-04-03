import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sponsorgenix/constants.dart';
import 'package:sponsorgenix/web/sections/Home/header_web.dart';

import '../src/About.dart';

class AnimatedLottieButton extends StatefulWidget {
  const AnimatedLottieButton({
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedLottieButton> createState() => _AnimatedLottieButtonState();
}

class _AnimatedLottieButtonState extends State<AnimatedLottieButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  Duration _duration = Duration(milliseconds: 300);
  bool isHovered = false;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final onHoverTransform = Matrix4.identity()..translate(0, -6, 0);
    final transformed = isHovered ? onHoverTransform : Matrix4.identity();
    return MouseRegion(
        onEnter: (event) => _onEntered(true),
        onExit: (event) => _onEntered(false),
        child: AnimatedContainer(
          duration: _duration,
          transform: transformed,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  primary: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [
                  const Text(
                    "Explore",
                    style: TextStyle(
                        fontFamily: kDefaultFontFamily,
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  LottieBuilder.network(
                    "https://assets8.lottiefiles.com/packages/lf20_vOtfdf.json",
                    height: 35,
                    controller: _animationController,
                  )
                ]),
              )),
        ));
  }

  void _onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
        if (isHovered == true) {
          _animationController.repeat();
        } else {
          _animationController.reset();
        }
      });
}
