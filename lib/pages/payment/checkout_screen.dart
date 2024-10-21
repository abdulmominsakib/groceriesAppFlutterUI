import 'package:flutter/material.dart';

import '../../components/heading_app_bar.dart';
import 'components/pay_button_widget.dart';
import 'components/payment_details_widget.dart';
import 'components/payment_methods.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingAppBar(
              hasBackButton: true,
              hasCartButton: false,
              onTapBack: () {
                Navigator.pop(context);
              },
              cartTap: () {
                Navigator.pop(context);
              },
              title: 'Checkout',
            ),
            SizedBox(height: 20),
            PaymentDetailsWidget(),
            SizedBox(height: 30),
            PaymentMethods(mediaQuery: mediaQuery),
            Spacer(),
            PayButtonWidget(),
          ],
        ),
      ),
    );
  }
}
