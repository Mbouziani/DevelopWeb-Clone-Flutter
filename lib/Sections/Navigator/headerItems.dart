import 'package:companyweb/DATA.dart';
import 'package:companyweb/Widgets/Colors.dart';
import 'package:flutter/material.dart';

class headritem extends StatelessWidget {
  final int index;
  final Color txtcolor;

  const headritem({Key? key, required this.index, required this.txtcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Text(
        naveitems[index],
        textAlign: TextAlign.center,
        style: TextStyle(
          height: 1.6,
          fontFamily: 'Comfortaa',
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: txtcolor,
        ),
      ),
    );
  }
}
