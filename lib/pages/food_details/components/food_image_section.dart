import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../models/food_model.dart';

class FoodImageSection extends StatelessWidget {
  const FoodImageSection({
    Key? key,
    required this.mediaQuery,
    required this.food,
  }) : super(key: key);

  final Size mediaQuery;
  final Food food;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mediaQuery.width * 0.8,
      child: Hero(
          tag: food.foodImage,
          child: Image.asset('assets/images/foods/${food.foodImage}.png')),
    );
  }
}
