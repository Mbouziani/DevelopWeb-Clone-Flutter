import 'package:companyweb/Sections/Service/ServiceWidget/ServiceCard_item.dart';
import 'package:companyweb/Widgets/Colors.dart';
import 'package:flutter/material.dart';

class ServisecSection extends StatelessWidget {
  final Key ServiseKey;

  const ServisecSection({Key? key, required this.ServiseKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ServiseKey,
      width: MediaQuery.of(context).size.width,
      height: 800,
      decoration: BoxDecoration(
        color: bleuAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.3),
            blurRadius: 55,
            spreadRadius: 0,
            offset: const Offset(0, -20),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            const SizedBox(
              width: 690,
              child: Padding(
                padding: EdgeInsets.all(47.0),
                child: Text(
                  "Our Services",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 1.3,
                    fontFamily: 'Comfortaa',
                    fontSize: 33,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 990,
              child: Wrap(
                spacing: 10,
                runSpacing: 20,
                children: List.generate(4, (index) {
                  return ServiceCarditem(index: index);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
