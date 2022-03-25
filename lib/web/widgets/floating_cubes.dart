import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class FloatingCubes extends StatefulWidget {
  final String assetLink;
  const FloatingCubes({
    Key? key,
    required this.assetLink,
  }) : super(key: key);

  @override
  State<FloatingCubes> createState() => _FloatingCubesState();
}

class _FloatingCubesState extends State<FloatingCubes> {
  // late RiveAnimationController _controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      child: RiveAnimation.asset(
        widget.assetLink,
        fit: BoxFit.cover,
      ),
      alignment: Alignment.center,
    );
  }
}
