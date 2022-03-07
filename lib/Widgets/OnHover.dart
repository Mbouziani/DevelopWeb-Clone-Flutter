import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

class OnHover extends StatefulWidget {
  const OnHover({Key? key, required this.builder}) : super(key: key);
  final Widget Function(bool isHovered) builder;

  @override
  State<OnHover> createState() => _OnHoverState();
}

class _OnHoverState extends State<OnHover> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => onEntred(true),
      onExit: (_) => onEntred(false),
      child: widget.builder(isHovered),
    );
  }

  void onEntred(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }
}
