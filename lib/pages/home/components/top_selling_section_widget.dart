import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../data.dart';
import '../../food_details/food_details_screen.dart';

import 'food_grid_tile.dart';

class TopSellingSectionWidget extends StatelessWidget {
  const TopSellingSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Selling',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'View All',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontSize: 14, color: Colors.grey),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 20,
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(
            height: mediaQuery.height * 0.25,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                FoodGridTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => FoodDetails(
                          food: foodList[0],
                        ),
                      ),
                    );
                  },
                  mediaQuery: mediaQuery,
                  food: foodList[0],
                ),
                FoodGridTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => FoodDetails(
                          food: foodList[1],
                        ),
                      ),
                    );
                  },
                  mediaQuery: mediaQuery,
                  food: foodList[1],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
