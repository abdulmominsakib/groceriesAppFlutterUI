import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../cart/cart_screen.dart';

class ProductDescriptonSection extends StatelessWidget {
  const ProductDescriptonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Product Description',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '''Green Cabbage - The king of cabbages and our old friend! The wide fan-like leaves are pale green in color and with a slightly rubbery texture when raw. Pick heads that are tight and feel heavy for their size. The outer few layers are usually wilted and should be discarded before preparing.''',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
                label: Text(
                  'Add To Cart',
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
