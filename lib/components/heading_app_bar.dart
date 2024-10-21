import 'package:flutter/material.dart';

class HeadingAppBar extends StatelessWidget {
  const HeadingAppBar({
    Key? key,
    this.hasBackButton = false,
    this.onTapBack,
    this.cartTap,
    this.hasCartButton = true,
    this.title = '',
  }) : super(key: key);

  final bool hasBackButton;
  final bool hasCartButton;
  final Function? onTapBack;
  final Function? cartTap;
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
            onTap: hasBackButton ? onTapBack as void Function()? : () {},
            borderRadius: BorderRadius.circular(8),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                hasBackButton
                    ? Icons.arrow_back_ios_rounded
                    : Icons.menu_rounded,
                color: Colors.white,
              ),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          InkWell(
            onTap: cartTap != null ? cartTap as void Function()? : () {},
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
