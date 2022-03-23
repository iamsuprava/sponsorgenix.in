import 'package:flutter/material.dart';

class ServicesWebScreen extends StatelessWidget {
  const ServicesWebScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Image.asset(
        "assets/images/bg_img_2.png",
        filterQuality: FilterQuality.high,
        fit: BoxFit.fill,
      ),
    );
  }
}
