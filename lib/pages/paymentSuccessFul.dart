import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_flutter_ui/data.dart';
import 'package:groceries_flutter_ui/pages/homeScreen.dart';

class PaymentSuccesful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: mediaQuery.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/payment-succesful.png'),
            Text(
              'Payment Successful',
              style: h1,
            ),
            hGap10,
            Text(
              'Your payment has been processed',
              style: lessImportantText,
            ),
            hGap10,
            /* <----------- PayButton ------------> */
            InkWell(
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
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    wGap10,
                    Text(
                      'Track Order',
                      style: h1.copyWith(fontSize: mediaQuery.height * 0.02),
                    ),
                  ],
                ),
              ),
            ),
            /* <----------- End Of PayButton------------> */
          ],
        ),
      ),
    );
  }
}
