import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sponsorgenix/web/src/Contact.dart';

import '../../constants.dart';

class AnimatedContactUsButton extends StatefulWidget {
  const AnimatedContactUsButton({Key? key}) : super(key: key);

  @override
  State<AnimatedContactUsButton> createState() =>
      _AnimatedContactUsButtonState();
}

class _AnimatedContactUsButtonState extends State<AnimatedContactUsButton>
    with SingleTickerProviderStateMixin {
  Duration _duration = Duration(milliseconds: 300);
  late AnimationController _animationController;
  bool isHovered = false;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2200));
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
                  context, MaterialPageRoute(builder: (context) => Contact()));
            },
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                primary: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(children: [
                const Text(
                  "Contact Us",
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
                  "https://assets8.lottiefiles.com/packages/lf20_ZfA8rp/audio_calls_05.json",
                  height: 35,
                  controller: _animationController,
                  repeat: true,
                )
              ]),
            )),
      ),
    );
  }

  void _onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
        if (isHovered == true) {
          _animationController.forward();
        } else {
          _animationController.reset();
        }
      });
}
