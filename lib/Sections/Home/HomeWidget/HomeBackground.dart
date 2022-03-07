import 'package:companyweb/Sections/Home/HomeWidget/IntroHomeitems.dart';
import 'package:flutter/material.dart';

class HomeBackWithitems extends StatelessWidget {
  final VoidCallback aboutFunction, portfolioFunction;

  const HomeBackWithitems(
      {Key? key, required this.aboutFunction, required this.portfolioFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 10,
          right: MediaQuery.of(context).size.width * 0.28,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(4 / 360),
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.5),

                    blurRadius: 15,
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
          left: MediaQuery.of(context).size.width * 0.28,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(-4 / 360),
            child: Container(
              height: 160,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12.withOpacity(0.5),

                    blurRadius: 15,
                    spreadRadius: 0,
                    offset: const Offset(4, 10), // Shadow position
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 720.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/develooper_Herobk.jpg"),
                fit: BoxFit.cover),
          ),
          child: introHomeitems(
              aboutFunction: aboutFunction,
              portfolioFunction: portfolioFunction),
        ),
      ],
    );
  }
}
