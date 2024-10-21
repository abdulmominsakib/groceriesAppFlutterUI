import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../payment/checkout_screen.dart';

class PaymentButtonWidget extends StatelessWidget {
  const PaymentButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                CupertinoPageRoute(builder: (context) => CheckoutScreen()));
          },
          child: Text(
            'Proceeds to payment',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
