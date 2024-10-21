
import 'models/category_model.dart';
import 'models/food_model.dart';

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
