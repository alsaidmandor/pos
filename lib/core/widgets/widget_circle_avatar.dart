import 'package:flutter/material.dart';

class WidgetCircleAvatar extends StatelessWidget {
  final double? radius;
  final Color color;
  final ImageProvider widget;

  const WidgetCircleAvatar({
    Key? key,
    required this.radius,
    required this.color,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      backgroundImage: widget,
    );
  }
}
