import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class PayButtonWidgetSuccess extends StatelessWidget {
  const PayButtonWidgetSuccess({
    Key? key,
    required this.mediaQuery,
  }) : super(key: key);

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.popUntil(
          context,
          ModalRoute.withName('/'),
        );
      },
      child: Container(
        width: mediaQuery.width * 0.4,
        margin: EdgeInsets.symmetric(
            horizontal: 20, vertical: mediaQuery.height * 0.04),
        padding: EdgeInsets.all(mediaQuery.height * 0.02),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 10),
            Text(
              'Track Order',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 20, color: Colors.white)
                  .copyWith(fontSize: mediaQuery.height * 0.02),
            ),
          ],
        ),
      ),
    );
  }
}
