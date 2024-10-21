import 'package:flutter/material.dart';
import '../intro_screen.dart';

class OnboardingPageWidget extends StatelessWidget {
  final OnboardingPage page;

  const OnboardingPageWidget({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            page.image,
            width: 500,
          ),
          SizedBox(height: 20),
          Text(
            page.title,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 20, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            page.description,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 14, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
