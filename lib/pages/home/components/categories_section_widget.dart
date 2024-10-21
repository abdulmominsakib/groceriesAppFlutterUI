import 'package:flutter/material.dart';
import '../../../data.dart';

import 'categories_list_tile.dart';

class CategoriesSectionWidget extends StatelessWidget {
  const CategoriesSectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Categories',
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
        ),
        SizedBox(height: 20),
        Container(
          margin: EdgeInsets.only(left: 20),
          height: mediaQuery.height * 0.18,
          child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CategoriesListTile(
                  mediaQuery: mediaQuery,
                  category: categories[index],
                );
              }),
        ),
      ],
    );
  }
}
