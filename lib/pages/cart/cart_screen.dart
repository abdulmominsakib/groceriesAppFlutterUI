import 'package:flutter/material.dart';

import '../../components/heading_app_bar.dart';
import 'components/payment_button_widget.dart';
import 'components/products_list_widget.dart';
import 'components/total_price_widget.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
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
              title: 'My Cart',
            ),
            SizedBox(height: 30),
            ProductsListWidget(mediaQuery: mediaQuery),
            TotalPriceWidget(),
            PaymentButtonWidget(),
          ],
        ),
      ),
    );
  }
}
