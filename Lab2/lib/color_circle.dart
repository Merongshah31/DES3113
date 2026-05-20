import 'package:flutter/material.dart';

class ColourCircle extends StatelessWidget {
  final Color color;
  final double size;

  const ColourCircle({required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}