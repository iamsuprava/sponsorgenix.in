import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class FloatingCubeMini extends StatelessWidget {
  final String assetLink;
  const FloatingCubeMini({Key? key, required this.assetLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      child: RiveAnimation.asset(
        assetLink,
        fit: BoxFit.contain,
      ),
      alignment: Alignment.center,
    );
  }
}
