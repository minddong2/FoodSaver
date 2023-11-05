import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Color bgColor;

  const Button({super.key, required this.bgColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
