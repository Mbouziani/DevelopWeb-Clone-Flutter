import 'package:companyweb/Sections/Home/HomeWidget/RowButton.dart';
import 'package:flutter/material.dart';

class introHomeitems extends StatelessWidget {
  const introHomeitems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 110.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment.center,
            height: 250,
            child: Image.asset(
              "assets/images/develooper_header.png",
              height: 91,
              width: 492,
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          const SizedBox(
            width: 690,
            child: Text(
              "Builds awesome websites and creates real impact",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.3,
                fontFamily: 'Comfortaa',
                fontSize: 37,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const RowButtonHome(),
        ],
      ),
    );
  }
}
