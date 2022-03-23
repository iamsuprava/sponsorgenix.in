import 'package:flutter/material.dart';

class NavBarTabs extends StatelessWidget {
  const NavBarTabs({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        title,
        style: const TextStyle(
            fontFamily: 'Gilroy',
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}