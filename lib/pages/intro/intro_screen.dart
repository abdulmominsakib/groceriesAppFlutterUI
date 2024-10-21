import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import 'components/bottom_section.dart';
import 'components/onboarding_page_widget.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);
  @override
  IntroScreenState createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final List<OnboardingPage> _pages = [
    OnboardingPage(
      image: 'assets/images/intro_image_1.png',
      title: 'Get your goods at the door',
      description:
          'Shop Online and get groceries from the store to your door in less than one hour',
    ),
    OnboardingPage(
      image: 'assets/images/intro_image_2.png',
      title: 'Fresh Products',
      description: 'We ensure that you get the freshest products available',
    ),
    OnboardingPage(
      image: 'assets/images/intro_image_3.png',
      title: 'Easy Payment',
      description: 'Multiple payment options for your convenience',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: _pages.length,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardingPageWidget(page: _pages[index]);
                },
              ),
            ),
            BottomSection(
              currentPage: _currentPage,
              pageCount: _pages.length,
              onNextPressed: () {
                if (_currentPage < _pages.length - 1) {
                  _pageController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(builder: (context) => HomeScreen()),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage {
  final String image;
  final String title;
  final String description;
  OnboardingPage({
    required this.image,
    required this.title,
    required this.description,
  });
}
