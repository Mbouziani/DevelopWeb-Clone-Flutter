import 'package:companyweb/Screens/Home_Screen.dart';
import 'package:companyweb/Sections/Home/HomeWidget/HomeBackground.dart';
import 'package:companyweb/Sections/Home/HomeWidget/HomeButtom.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  final Key Homekey;

  const HomeSection({Key? key, required this.Homekey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Homekey,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: const [
          HomeBackWithitems(),
          HomeBottemContact(),
        ],
      ),
    );
  }
}
