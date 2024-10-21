import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'animated_indicator.dart';

class PageIndicator extends StatelessWidget {
  final int currentPage;
  final int pageCount;

  const PageIndicator(
      {Key? key, required this.currentPage, required this.pageCount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        pageCount,
        (index) => AnimatedIndicator(isActive: index == currentPage),
      ),
    );
  }
}
