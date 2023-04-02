import 'package:flutter/cupertino.dart';

class FoodConsumed {
  final String ? foodName;
  final String ? consumedAmount;
  final Widget ? icon;
  final Color ? boxColor;
  final Image? image;
  FoodConsumed({this.foodName, this.consumedAmount, this.icon, this.boxColor, this.image});
}