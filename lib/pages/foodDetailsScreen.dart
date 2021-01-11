import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_flutter_ui/data.dart';
import 'package:groceries_flutter_ui/pages/cartScreen.dart';
import 'package:groceries_flutter_ui/pages/homeScreen.dart';

class FoodDetails extends StatelessWidget {
  final Food food;
  const FoodDetails({Key key, @required this.food}) : super(key: key);

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
                onTapBack: () {
                  Navigator.pop(context);
                },
                cartTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => CartScreen(),
                    ),
                  );
                },
              ),
              /* <----------- End Of AppBar ------------> */

              /* <----------- Image ------------> */
              Container(
                width: mediaQuery.width * 0.8,
                child: Hero(
                    tag: food.foodImage,
                    child: Image.asset(
                        'assets/images/foods/${food.foodImage}.png')),
              ),

              /* <----------- Food Name And Ratings ------------> */
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.foodName,
                          style: h1,
                        ),
                        hGap10,
                        Text(
                          '\$ ${food.foodPrice}',
                          style: normalText,
                        ),
                        hGap10,
                        /* <----------- Rating ------------> */
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                          ],
                        ),
                      ],
                    ),

                    /* <----------- Counter ------------> */
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              '2 ${food.foodUnit}',
                              style: normalText,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    /* <----------- End of Counter ------------> */
                  ],
                ),
              ),
              /* <----------- End Food Name And Ratings ------------> */

              /* <----------- Product Description ------------> */
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Product Description',
                              style: h2,
                            ),
                            hGap10,
                            Text(
                              '''Green Cabbage – The king of cabbages and our old friend! The wide fan-like leaves are pale green in color and with a slightly rubbery texture when raw. Pick heads that are tight and feel heavy for their size. The outer few layers are usually wilted and should be discarded before preparing.''',
                              style: lessImportantText,
                            ),
                          ],
                        ),
                      ),
                      /* <----------- End Product Description ------------> */

                      /* <----------- Add To Cart Button ------------> */
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => CartScreen(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: mediaQuery.height * 0.04),
                          padding: EdgeInsets.all(mediaQuery.height * 0.02),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_cart_rounded,
                                color: Colors.white,
                                size: 30,
                              ),
                              wGap10,
                              Text(
                                'Add To Cart',
                                style: h1.copyWith(fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              /* <----------- End Of Add To cart button ------------> */
            ],
          ),
        ),
      ),
    );
  }
}
