import 'package:companyweb/DATA.dart';
import 'package:flutter/material.dart';

class ServiceCardFront extends StatelessWidget {
  final int index;

  const ServiceCardFront({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/${cardimg[index]}.png"),
                fit: BoxFit.contain),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          cardtitle[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            height: 1.3,
            fontFamily: 'Comfortaa',
            fontSize: 28,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
