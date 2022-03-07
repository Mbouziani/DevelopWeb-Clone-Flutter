import 'package:companyweb/Widgets/Colors.dart';
import 'package:companyweb/Widgets/Costumebutton.dart';
import 'package:companyweb/Widgets/OnHover.dart';
import 'package:flutter/material.dart';

class RowButtonHome extends StatelessWidget {
  const RowButtonHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 990,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OnHover(
            builder: (isHovered) {
              return Costumebutton(
                backClr: orngClr,
                txtClr: white,
                borderClr: orngClr,
                hoverClr: bleuClr,
                borderhvrClr: bleuClr,
                onClick: () {},
                textbutton: "OUR PORTFOLIO",
                isHovered: isHovered,
              );
            },
          ),
          const SizedBox(
            width: 20,
          ),
          OnHover(
            builder: (isHovered) {
              return Costumebutton(
                backClr: transClr,
                txtClr: white,
                borderClr: white,
                hoverClr: white.withOpacity(0.2),
                borderhvrClr: white,
                onClick: () {},
                textbutton: "ABOUT US",
                isHovered: isHovered,
              );
            },
          ),
        ],
      ),
    );
  }
}
