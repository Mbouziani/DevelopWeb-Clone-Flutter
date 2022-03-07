import 'package:companyweb/Sections/Service/ServiceWidget/ServiceCardFront.dart';
import 'package:companyweb/Sections/Service/ServiceWidget/ServicesCardback.dart';
import 'package:companyweb/Widgets/Colors.dart';
import 'package:companyweb/Widgets/OnHover.dart';
import 'package:flutter/material.dart';

class ServiceCarditem extends StatelessWidget {
  final int index;

  const ServiceCarditem({Key? key, required this.index}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OnHover(
      builder: (isHovered) {
        return Stack(
          children: [
            Positioned(
              bottom: 10,
              right: 15,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(2 / 360),
                child: Container(
                  height: 65,
                  width: 290,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.7),

                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: const Offset(4, 10), // Shadow position
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 15,
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(-2 / 360),
                child: Container(
                  height: 65,
                  width: 290,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.7),

                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: const Offset(4, 10), // Shadow position
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              color: isHovered ? white : bleuClr,
              elevation: 7,
              child: Container(
                height: 250,
                width: 480,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(27.0),
                  child: isHovered
                      ? ServiceCardBack(index: index)
                      : ServiceCardFront(index: index),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
