import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/heading_app_bar.dart';
import '../../models/food_model.dart';
import '../cart/cart_screen.dart';
import 'components/food_image_section.dart';
import 'components/food_name_and_ratings.dart';
import 'components/product_descripton_section.dart';

class FoodDetails extends StatelessWidget {
  final Food food;
  const FoodDetails({Key? key, required this.food}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeadingAppBar(
              hasBackButton: true,
              onTapBack: () {
                Navigator.pop(context);
              },
              cartTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
            ),
            FoodImageSection(mediaQuery: mediaQuery, food: food),
            FoodNameAndRatings(food: food),
            ProductDescriptonSection(),
          ],
        ),
      ),
    );
  }
}
