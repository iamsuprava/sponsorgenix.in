import 'package:flutter/material.dart';

class HoverEffectButton extends StatefulWidget {
  final Widget child;
  const HoverEffectButton({Key? key, required this.child}) : super(key: key);

  @override
  State<HoverEffectButton> createState() => _HoverEffectButtonState();
}

class _HoverEffectButtonState extends State<HoverEffectButton> {
  @override
  Duration _duration = Duration(milliseconds: 200);
  bool isHovered = false;
  Widget build(BuildContext context) {
    final onHoverTransform = Matrix4.identity()..translate(0, -6, 0);
    final transformed = isHovered ? onHoverTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => _onEntered(true),
      onExit: (event) => _onEntered(false),
      child: AnimatedContainer(
        duration: _duration,
        transform: transformed,
        child: widget.child,
      ),
    );
  }

  void _onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
