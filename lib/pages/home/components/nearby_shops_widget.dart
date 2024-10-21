import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class NearbyShopsWidget extends StatelessWidget {
  const NearbyShopsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nearby Shops',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColors.thirdColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                  child: Image.asset(
                      'assets/images/Walmart_logo_transparent_png.png'),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Walmart Canada',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Text(
                      'Open 9AM - 5PM',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 14, color: Colors.grey),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 5),
                        Text(
                          '5',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 2,
                          height: 10,
                          color: Colors.white.withOpacity(0.3),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '9.11 km',
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
