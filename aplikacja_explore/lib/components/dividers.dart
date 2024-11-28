import 'package:flutter/material.dart';

class ThickDivider extends StatelessWidget {
  final Color color;
  const ThickDivider({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color,
      thickness: 2,
      indent: 20,
      endIndent: 20,
    );
  }
}

class ThinDivider extends StatelessWidget {
  final Color? lineColor;
  const ThinDivider({Key? key, this.lineColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: lineColor ?? const Color.fromARGB(255, 214, 214, 214),
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}
