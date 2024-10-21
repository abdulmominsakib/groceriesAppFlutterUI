import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../models/food_model.dart';

class FoodGridTile extends StatelessWidget {
  const FoodGridTile({
    Key? key,
    required this.mediaQuery,
    required this.food,
    this.onTap,
  }) : super(key: key);

  final Size mediaQuery;
  final Food food;
  final Function? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap as void Function()?,
      child: Container(
        height: mediaQuery.height * 0.25,
        width: mediaQuery.width * 0.4,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.thirdColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: mediaQuery.width * 0.4,
                  child: Hero(
                    tag: food.foodImage,
                    child: Image.asset(
                      'assets/images/foods/${food.foodImage}.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.foodName,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$${food.foodPrice} / ${food.foodUnit}',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
