import 'package:flutter/material.dart';

class SocialButtons extends StatefulWidget {
  final Widget child;
  const SocialButtons({Key? key, required this.child}) : super(key: key);

  @override
  State<SocialButtons> createState() => _SocialButtonsState();
}

class _SocialButtonsState extends State<SocialButtons> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    final onHoverTransform = Matrix4.identity()..translate(0, -8, 0);
    final transformed = isHovered ? onHoverTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => _onEntered(true),
      onExit: (event) => _onEntered(false),
      child: AnimatedContainer(
          height: 50,
          width: 50,
          duration: const Duration(milliseconds: 200),
          transform: transformed,
          child: widget.child),
    );
  }

  void _onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}