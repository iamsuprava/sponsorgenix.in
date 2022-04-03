import 'package:flutter/material.dart';

class FeedbackWeb extends StatelessWidget {
  const FeedbackWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Image.asset(
        "assets/images/recent_work_bg.png",
        filterQuality: FilterQuality.high,
        fit: BoxFit.cover,
      ),
    );
  }
}
