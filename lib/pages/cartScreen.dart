import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_flutter_ui/data.dart';
import 'package:groceries_flutter_ui/pages/homeScreen.dart';
import 'package:groceries_flutter_ui/pages/paymentScreen.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
            child: Column(
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
              title: 'My Cart',
            ),
            /* <----------- End AppBar ------------> */
            hGap30,
            /* <----------- List of Products ------------> */
            Expanded(
              child: ListView(
                children: [
                  CartItem(
                    mediaQuery: mediaQuery,
                    itemName: 'Green Cabbage',
                    price: '12',
                    image: 'green-cabbage',
                    unit: '2Kg',
                    madeIn: 'Canada',
                  ),
                  CartItem(
                    mediaQuery: mediaQuery,
                    itemName: 'Pepper',
                    price: '10',
                    image: 'potato',
                    unit: '2Kg',
                    madeIn: 'India',
                  ),
                  CartItem(
                    mediaQuery: mediaQuery,
                    itemName: 'Black Coffee',
                    price: '5',
                    image: 'blackCoffe',
                    unit: '2Kg',
                    madeIn: 'Canada',
                  ),
                  CartItem(
                    mediaQuery: mediaQuery,
                    itemName: 'Green Cabbage',
                    price: '12',
                    image: 'green-cabbage',
                    unit: '2Kg',
                    madeIn: 'Canada',
                  ),
                ],
              ),
            ),
            /* <----------- End Of products ------------> */

            /* <----------- Total Price ------------> */
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: thirdColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Selected Items (5)', style: h2),
                  hGap15,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total:',
                        style: lessImportantText,
                      ),
                      Text(
                        '\$750',
                        style: normalText.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /* <----------- End of Total Price ------------> */

            /* <----------- Payment button ------------> */
            InkWell(
              onTap: () {
                Navigator.push(context,
                    CupertinoPageRoute(builder: (context) => PaymentScreen()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                padding: EdgeInsets.all(15),
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
                      'Proceed To Payment',
                      style: h1.copyWith(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            /* <----------- End of Payment Button ------------> */
          ],
        )),
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem(
      {Key key,
      @required this.mediaQuery,
      this.itemName,
      this.madeIn,
      this.price,
      this.image,
      this.unit})
      : super(key: key);

  final Size mediaQuery;
  final String itemName, madeIn, price, image, unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Container(
          width: mediaQuery.width * 0.15,
          child: Image.asset(
            'assets/images/foods/$image.png',
            fit: BoxFit.fitWidth,
          ),
        ),
        title: Text(
          '$itemName',
          style: h2.copyWith(fontWeight: FontWeight.normal),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Made in $madeIn',
              style: lessImportantText,
            ),
            hGap5,
            Text(
              '\$ $price',
              style: normalText.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        trailing: Container(
          width: mediaQuery.width * 0.3,
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.add,
                  color: primaryColor,
                ),
              ),
              Container(
                margin:
                    EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.02),
                child: Text(
                  '$unit',
                  style: normalText,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: thirdColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.remove,
                  color: primaryColor,
                ),
              ),
            ],
          ),
        ),
        /* <----------- End of Counter ------------> */
      ),
    );
  }
}
