import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class NavBarTabs extends StatefulWidget {
//   const NavBarTabs({Key? key, required this.title, required this.function})
//       : super(key: key);
//   final String title;
//   final VoidCallback function;
//   @override
//   State<NavBarTabs> createState() => _NavBarTabsState();
// }

// class _NavBarTabsState extends State<NavBarTabs> {
//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () => widget.function,
//       child: Text(
//         widget.title,
//         style: const TextStyle(
//             fontFamily: 'Gilroy',
//             color: Colors.white,
//             fontSize: 16,
//             fontWeight: FontWeight.w600),
//       ),
//     );
//   }
// }

class NavButton extends StatefulWidget {
  final String text;
  final Function function;
  NavButton({required this.function, required this.text});
  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.function();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Text(
          widget.text,
          style: const TextStyle(
              fontFamily: 'Gilroy',
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
