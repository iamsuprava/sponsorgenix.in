import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimatedContactUsButton extends StatefulWidget {
  const AnimatedContactUsButton({Key? key}) : super(key: key);

  @override
  State<AnimatedContactUsButton> createState() =>
      _AnimatedContactUsButtonState();
}

class _AnimatedContactUsButtonState extends State<AnimatedContactUsButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isHovered = false;
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 4000));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => _onEntered(true),
      onExit: (event) => _onEntered(false),
      child: Container(
        height: 200,
        width: 200,
        child: LottieBuilder.network(
          "https://assets1.lottiefiles.com/packages/lf20_pbsn1omx.json",
          controller: _animationController,
        ),
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
