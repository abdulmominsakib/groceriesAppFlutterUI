import 'package:flutter/material.dart';

/* <----------- Categories ------------> */
class Category {
  final String name, image;
  final int backColor;
  Category({this.name, this.image, this.backColor});
}

List<Category> categories = [
  Category(
    name: 'Fruits',
    image: 'fruits',
    backColor: 0xFF2A3763,
  ),
  Category(name: 'Vegetables', image: 'vegetables', backColor: 0xFF4E4D75),
  Category(name: 'Rice', image: 'rice', backColor: 0xFF3F6067),
  Category(name: 'Meats', image: 'meat', backColor: 0xFF644C64),
  Category(name: 'Bakery', image: 'bakery', backColor: 0xFF634488),
];

/* <----------- Food Class ------------> */
class Food {
  final String foodName, foodImage, foodUnit;
  final double foodPrice;
  Food({this.foodImage, this.foodName, this.foodUnit, this.foodPrice});
}

List<Food> foodList = [
  Food(
    foodName: 'Green Cabbage',
    foodImage: 'green-cabbage',
    foodUnit: 'Kg',
    foodPrice: 12,
  ),
  Food(
    foodName: 'Potato',
    foodImage: 'potato',
    foodUnit: 'Kg',
    foodPrice: 5,
  )
];

/* <----------- Colors ------------> */
const Color scaffoldColor = Color(0xFF010A43);
const Color primaryColor = Color(0xFF39CF89);
const Color secondaryColor = Color(0xFF2B3676);
const Color thirdColor = Color(0xFF444D88);
const Color cardBackground = Color(0xFF081257);

/* <----------- Text Style ------------> */
const TextStyle h1 =
    TextStyle(fontSize: 26, color: Colors.white, fontWeight: FontWeight.bold);

const TextStyle h2 =
    TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold);

const TextStyle lessImportantText = TextStyle(
  fontSize: 15,
  color: Colors.white38,
);

const TextStyle normalText = TextStyle(color: Colors.white);

/* <----------- Height Gap ------------> */
const hGap5 = SizedBox(height: 5);
const hGap10 = SizedBox(height: 10);
const hGap15 = SizedBox(height: 15);
const hGap20 = SizedBox(height: 20);
const hGap30 = SizedBox(height: 30);
const hGap40 = SizedBox(height: 40);
/* <----------- Weight Gap ------------> */
const wGap5 = SizedBox(width: 5);
const wGap10 = SizedBox(width: 10);
const wGap15 = SizedBox(width: 15);
const wGap20 = SizedBox(width: 20);
