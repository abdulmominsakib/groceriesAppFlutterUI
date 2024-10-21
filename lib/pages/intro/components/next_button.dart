import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class NextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Size mediaQuery;

  const NextButton(
      {Key? key, required this.onPressed, required this.mediaQuery})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.green,
      borderRadius: BorderRadius.circular(15),
      onTap: onPressed,
      child: Container(
        height: mediaQuery.height * 0.1,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.primaryColor,
        ),
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 50,
          color: Colors.white,
        ),
      ),
    );
  }
}
