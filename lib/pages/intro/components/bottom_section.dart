import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'next_button.dart';
import 'page_indicator.dart';

class BottomSection extends StatelessWidget {
  final int currentPage;
  final int pageCount;
  final VoidCallback onNextPressed;

  const BottomSection({
    Key? key,
    required this.currentPage,
    required this.pageCount,
    required this.onNextPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PageIndicator(currentPage: currentPage, pageCount: pageCount),
          NextButton(onPressed: onNextPressed, mediaQuery: mediaQuery),
        ],
      ),
    );
  }
}
