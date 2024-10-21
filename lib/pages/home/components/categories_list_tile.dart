import 'package:flutter/material.dart';

import '../../../models/category_model.dart';

class CategoriesListTile extends StatelessWidget {
  const CategoriesListTile({
    Key? key,
    required this.mediaQuery,
    required this.category,
  }) : super(key: key);

  final Size mediaQuery;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: mediaQuery.height * 0.1,
            width: mediaQuery.width * 0.25,
            decoration: BoxDecoration(
              color: Color(category.backColor),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/categories/${category.image}.png',
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 10),
          Text(
            category.name,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 16, color: Colors.white),
          )
        ],
      ),
    );
  }
}
