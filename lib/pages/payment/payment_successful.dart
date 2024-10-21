import 'package:flutter/material.dart';

import 'components/pay_button_widget_success_screen.dart';

class PaymentSuccesful extends StatelessWidget {
  const PaymentSuccesful({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: mediaQuery.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/payment-succesful.png'),
            Text(
              'Payment Successful',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'Your payment has been processed',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 10),
            PayButtonWidgetSuccess(mediaQuery: mediaQuery),
          ],
        ),
      ),
    );
  }
}
