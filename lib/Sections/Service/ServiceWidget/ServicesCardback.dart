import 'package:companyweb/DATA.dart';
import 'package:companyweb/Widgets/Colors.dart';
import 'package:flutter/material.dart';

class ServiceCardBack extends StatelessWidget {
  final int index;

  const ServiceCardBack({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cardtitle[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            height: 1.3,
            fontFamily: 'Comfortaa',
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          carddescriptio[index],
          textAlign: TextAlign.center,
          style: const TextStyle(
            height: 1.3,
            fontFamily: 'Comfortaa',
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: black,
          ),
        ),
      ],
    );
  }
}
