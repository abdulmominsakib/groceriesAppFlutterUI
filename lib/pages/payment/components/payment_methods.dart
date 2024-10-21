import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({
    Key? key,
    required this.mediaQuery,
  }) : super(key: key);

  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'Payment Method',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          margin: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                    alignment: Alignment.center,
                    width: mediaQuery.width * 0.2,
                    child: Image.asset(
                      'assets/images/paypal.png',
                    )),
                title: Text(
                  'Paypal',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                subtitle: Text(
                  '12434***********13',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontSize: 14, color: Colors.grey),
                ),
                trailing: Icon(
                  Icons.payment,
                  color: Colors.white70,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
