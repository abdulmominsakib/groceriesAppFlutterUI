import 'package:flutter/material.dart';

import '../../components/heading_app_bar.dart';
import 'components/categories_section_widget.dart';
import 'components/nearby_shops_widget.dart';
import 'components/search_section_widget.dart';
import 'components/top_selling_section_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SearchSectionWidget(),
                    SizedBox(height: 20),
                    CategoriesSectionWidget(),
                    TopSellingSectionWidget(),
                    SizedBox(height: 20),
                    NearbyShopsWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
