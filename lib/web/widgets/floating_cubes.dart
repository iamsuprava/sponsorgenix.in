import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class FloatingCubes extends StatelessWidget {
  final String assetLink;
  const FloatingCubes({Key? key, required this.assetLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      child: RiveAnimation.asset(
        assetLink,
        fit: BoxFit.cover,
      ),
      alignment: Alignment.center,
    );
  }
}
