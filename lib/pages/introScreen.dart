import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceries_flutter_ui/data.dart';
import 'package:groceries_flutter_ui/pages/homeScreen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          width: mediaQuery.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /* <----------- Image and Text Section ------------> */
              Container(
                height: mediaQuery.height * 0.8,
                margin: EdgeInsets.symmetric(horizontal: 60),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/intro_image.png',
                      width: 500,
                    ),
                    hGap20,
                    Text(
                      'Get your goods at the door',
                      style: h1,
                      textAlign: TextAlign.center,
                    ),
                    hGap20,
                    Text(
                      'Shop Online and get grocieries from the store to at your door in less than one hour',
                      style: lessImportantText,
                      textAlign: TextAlign.center,
                    ),
                    hGap40,
                  ],
                ),
              ),
              /* <----------- Bottom Section ------------> */
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: mediaQuery.width * 0.15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 5,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 5,
                          ),
                          Container(
                            width: 20,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Next Button
                    InkWell(
                      splashColor: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                      child: Container(
                        height: mediaQuery.height * 0.1,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: primaryColor),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
