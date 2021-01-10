import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_flutter_ui/data.dart';
import 'package:groceries_flutter_ui/pages/foodDetailsScreen.dart';

class HomeScreen extends StatelessWidget {
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
              HeadingAppBar(),
              /* <----------- Search Section ------------> */
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hey, Paul',
                              style: h1,
                            ),
                            hGap20,
                            Text(
                              'Find your daily Goods here',
                              style: lessImportantText,
                            ),
                            hGap20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: SearchBox()),
                                wGap10,
                                Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: thirdColor,
                                  ),
                                  child: Transform.rotate(
                                      angle: 300,
                                      child: Icon(Icons.tune,
                                          color: Colors.white)),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      /* <----------- !End of Search Section ------------> */
                      hGap20,
                      /* <----------- Categories ------------> */
                      Container(
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Categories',
                                    style: h2,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'View All',
                                        style: lessImportantText,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            hGap20,
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              height: mediaQuery.height * 0.18,
                              child: ListView.builder(
                                  itemCount: categories.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return CategoriesListTile(
                                      mediaQuery: mediaQuery,
                                      category: categories[index],
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ),
                      /* <----------- End Of Categories ------------> */

                      /* <----------- Top Selling section ------------> */

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Top Selling',
                                  style: h2,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'View All',
                                      style: lessImportantText,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ],
                            ),
                            hGap20,
                            Container(
                              height: mediaQuery.height * 0.25,
                              child: ListView(
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                children: [
                                  FoodListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) => FoodDetails(
                                            food: foodList[0],
                                          ),
                                        ),
                                      );
                                    },
                                    mediaQuery: mediaQuery,
                                    food: foodList[0],
                                  ),
                                  FoodListTile(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                          builder: (context) => FoodDetails(
                                            food: foodList[1],
                                          ),
                                        ),
                                      );
                                    },
                                    mediaQuery: mediaQuery,
                                    food: foodList[1],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      /* <----------- End Of Top Selling section ------------> */

                      hGap20,

                      /* <----------- Nearby Shops ------------> */
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Nearby Shops',
                              style: h2,
                            ),
                            hGap10,
                            Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: thirdColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    height: 30,
                                    child: Image.asset(
                                        'assets/images/Walmart_logo_transparent_png.png'),
                                  ),
                                  wGap10,
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Walmart Canada',
                                        style: normalText,
                                      ),
                                      Text(
                                        'Open 9AM - 5PM',
                                        style: lessImportantText,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.star,
                                              color: Colors.yellow),
                                          wGap5,
                                          Text(
                                            '5',
                                            style: normalText,
                                          ),
                                          wGap10,
                                          Container(
                                            width: 2,
                                            height: 10,
                                            color:
                                                Colors.white.withOpacity(0.3),
                                          ),
                                          wGap10,
                                          Text(
                                            '9.11 km',
                                            style: normalText,
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              /* <----------- End Nearby Shops ------------> */
            ],
          ),
        ),
      ),
    );
  }
}

class FoodListTile extends StatelessWidget {
  const FoodListTile({
    Key key,
    @required this.mediaQuery,
    @required this.food,
    this.onTap,
  }) : super(key: key);

  final Size mediaQuery;
  final Food food;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: mediaQuery.height * 0.25,
        width: mediaQuery.width * 0.4,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: thirdColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: mediaQuery.width * 0.4,
                  child: Hero(
                    tag: food.foodImage,
                    child: Image.asset(
                      'assets/images/foods/${food.foodImage}.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                hGap10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food.foodName,
                          style:
                              normalText.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '\$${food.foodPrice} / ${food.foodUnit}',
                          style: normalText,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesListTile extends StatelessWidget {
  const CategoriesListTile({
    Key key,
    @required this.mediaQuery,
    @required this.category,
  }) : super(key: key);

  final Size mediaQuery;
  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: mediaQuery.height * 0.1,
            width: mediaQuery.width * 0.25,
            decoration: BoxDecoration(
              color: Color(category.backColor),
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/categories/${category.image}.png',
              fit: BoxFit.contain,
            ),
          ),
          hGap10,
          Text(
            category.name,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xFF6A6F8F),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.white54,
          ),
          wGap10,
          Text(
            'Search you goods here...',
            style: lessImportantText,
          ),
        ],
      ),
    );
  }
}

class HeadingAppBar extends StatelessWidget {
  const HeadingAppBar({
    Key key,
    this.hasBackButton = false,
    this.onTapBack,
    this.cartTap,
    this.hasCartButton = true,
    this.title = '',
  }) : super(key: key);

  final bool hasBackButton;
  final bool hasCartButton;
  final Function onTapBack;
  final Function cartTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: hasBackButton ? onTapBack : null,
            child: Icon(
              hasBackButton ? Icons.arrow_back_ios_rounded : Icons.menu_rounded,
              color: Colors.white,
            ),
          ),

          Text(
            title,
            style: h2,
          ),

          // Cart Button
          InkWell(
            onTap: cartTap,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF444D88),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Stack(
                children: [
                  hasCartButton
                      ? Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        )
                      : Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                  hasCartButton
                      ? Positioned(
                          bottom: 0,
                          right: 0,
                          child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 4,
                          ),
                        )
                      : SizedBox(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
