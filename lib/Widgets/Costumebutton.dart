import 'package:flutter/material.dart';

class Costumebutton extends StatelessWidget {
  final bool isHovered;
  final String textbutton;
  final Color txtClr, backClr, hoverClr, borderClr, borderhvrClr;
  final VoidCallback onClick;

  const Costumebutton({
    Key? key,
    required this.isHovered,
    required this.textbutton,
    required this.backClr,
    required this.hoverClr,
    required this.borderClr,
    required this.onClick,
    required this.borderhvrClr,
    required this.txtClr,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        decoration: BoxDecoration(
            color: isHovered ? hoverClr : backClr,
            border: Border.all(
              width: 1,
              color: isHovered ? borderhvrClr : borderClr,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 13),
          child: Text(
            textbutton,
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 2.5,
              fontFamily: 'Comfortaa',
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: txtClr,
            ),
          ),
        ),
      ),
    );
  }
}
