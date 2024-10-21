import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class CartItem extends StatelessWidget {
  const CartItem(
      {Key? key,
      required this.mediaQuery,
      this.itemName,
      this.madeIn,
      this.price,
      this.image,
      this.unit})
      : super(key: key);

  final Size mediaQuery;
  final String? itemName, madeIn, price, image, unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: SizedBox(
          width: mediaQuery.width * 0.15,
          child: Image.asset(
            'assets/images/foods/$image.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        title: Text(
          '$itemName',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)
              .copyWith(fontWeight: FontWeight.normal),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Made in $madeIn',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 5),
            Text(
              '\$ $price',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        trailing: SizedBox(
          width: mediaQuery.width * 0.3,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.thirdColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.add,
                  color: AppColors.primaryColor,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.02),
                child: Text(
                  '$unit',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColors.thirdColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.remove,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
