import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_flutter_ui/data.dart';
import 'package:groceries_flutter_ui/pages/homeScreen.dart';
import 'package:groceries_flutter_ui/pages/paymentSuccessFul.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* <----------- AppBar ------------> */
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
              /* <----------- End AppBar ------------> */

              /* <----------- Payment Details ------------> */
              hGap20,
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: cardBackground,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Details',
                      style: h2,
                    ),
                    hGap10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub total price',
                          style: lessImportantText,
                        ),
                        Text(
                          '\$100',
                          style: normalText,
                        ),
                      ],
                    ),
                    hGap10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Charge',
                          style: lessImportantText,
                        ),
                        Text(
                          '\$20',
                          style: normalText,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.white38,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Pay',
                          style: normalText,
                        ),
                        Text(
                          '\$120',
                          style:
                              normalText.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /* <----------- End Payment Details ------------> */
              hGap30,
              /* <----------- Payment Method ------------> */
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Payment Method',
                  style: h2,
                ),
              ),
              hGap10,
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: cardBackground,
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
                        style: normalText,
                      ),
                      subtitle: Text(
                        '12434***********13',
                        style: lessImportantText,
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
              /* <----------- End of Payment Method ------------> */

              /* <----------- PayButton ------------> */
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => PaymentSuccesful(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
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
                          'Buy',
                          style: h1.copyWith(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              /* <----------- End Of PayButton------------> */
            ],
          ),
        ),
      ),
    );
  }
}
