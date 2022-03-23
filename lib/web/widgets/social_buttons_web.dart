import 'dart:html';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialButtons extends StatefulWidget {
  final Widget child;
  final String url;
  const SocialButtons({Key? key, required this.child, required this.url})
      : super(key: key);

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
          child: IconButton(
            onPressed: () async {
              if (await canLaunch(widget.url)) {
                await launch(widget.url);
              } else
                print("Currently unavailable");
            },
            icon: widget.child,
          ),
        ));
  }

  void _onEntered(bool isHovered) => setState(() {
        this.isHovered = isHovered;
      });
}
