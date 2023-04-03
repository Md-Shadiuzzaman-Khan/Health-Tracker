import 'dart:ui';
import 'food_consumed.dart';

class MealConsumed {
  final List<FoodConsumed> ? consumedFoods;
  final String ? mealName;
  final String ? mealAmount;
  final double ? progressValue;
  final Color ? textColor;
  MealConsumed({this.consumedFoods,this.mealName,this.mealAmount,this.progressValue,this.textColor});
}