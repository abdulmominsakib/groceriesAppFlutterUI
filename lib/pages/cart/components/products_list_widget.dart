import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart_item.dart';

class ProductsListWidget extends StatelessWidget {
  const ProductsListWidget({
    Key? key,
    required this.mediaQuery,
  }) : super(key: key);

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CartItem(
            mediaQuery: mediaQuery,
            itemName: 'Green Cabbage',
            price: '12',
            image: 'green-cabbage',
            unit: '2Kg',
            madeIn: 'Canada',
          ),
          CartItem(
            mediaQuery: mediaQuery,
            itemName: 'Pepper',
            price: '10',
            image: 'potato',
            unit: '2Kg',
            madeIn: 'India',
          ),
          CartItem(
            mediaQuery: mediaQuery,
            itemName: 'Black Coffee',
            price: '5',
            image: 'blackCoffe',
            unit: '2Kg',
            madeIn: 'Canada',
          ),
          CartItem(
            mediaQuery: mediaQuery,
            itemName: 'Green Cabbage',
            price: '12',
            image: 'green-cabbage',
            unit: '2Kg',
            madeIn: 'Canada',
          ),
        ],
      ),
    );
  }
}
