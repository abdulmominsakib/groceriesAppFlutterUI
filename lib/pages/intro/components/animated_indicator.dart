import 'package:flutter/material.dart';


class AnimatedIndicator extends StatelessWidget {
  const AnimatedIndicator({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 20 : 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white.withOpacity(0.5),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}