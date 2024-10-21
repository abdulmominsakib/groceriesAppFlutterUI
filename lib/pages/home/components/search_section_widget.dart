import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import 'search_box.dart';

class SearchSectionWidget extends StatelessWidget {
  const SearchSectionWidget({
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
            'Hey, Paul',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 20, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            'Find your daily Goods here',
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(fontSize: 14, color: Colors.grey),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: SearchBox()),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.thirdColor,
                ),
                child: Transform.rotate(
                    angle: 300, child: Icon(Icons.tune, color: Colors.white)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
