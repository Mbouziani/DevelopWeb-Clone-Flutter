import 'package:companyweb/Widgets/Colors.dart';
import 'package:companyweb/Widgets/Costumebutton.dart';
import 'package:companyweb/Widgets/OnHover.dart';
import 'package:flutter/material.dart';

class HomeBottemContact extends StatelessWidget {
  const HomeBottemContact({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 150),
      height: 206,
      child: Column(
        children: [
          const SizedBox(
            width: 990,
            child: Text(
              "We build websites completely adapted to your need and taste. Just tell us what you want and we create it.",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.5,
                fontFamily: 'Comfortaa',
                fontSize: 26,
                fontWeight: FontWeight.w400,
                color: black,
              ),
            ),
          ),
          const SizedBox(
            height: 27,
          ),
          OnHover(
            builder: (isHovered) {
              return Costumebutton(
                isHovered: isHovered,
                textbutton: 'CONTACT US',
                backClr: white,
                txtClr: black,
                hoverClr: black.withOpacity(0.05),
                borderClr: black,
                onClick: () {},
                borderhvrClr: black,
              );
            },
          )
        ],
      ),
    );
  }
}
