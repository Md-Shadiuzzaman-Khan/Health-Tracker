import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/food_consumed.dart';
import '../../models/meal_consumed.dart';
import 'package:health_tracker/utils/meal_consumed_tile.dart';

class MealsConsumed extends StatefulWidget {
  const MealsConsumed({
    Key ? key
  }): super(key: key);

  @override
  State < MealsConsumed > createState() => _MealsConsumedState();
}

class _MealsConsumedState extends State < MealsConsumed > {

  List < MealConsumed > mealsConsumed = [];

  @override
  void didChangeDependencies() {
    provideMealsConsumed();
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mealsConsumed.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom:15.w),
        itemBuilder: (BuildContext context, int index) {
          return mealConsumedTile(mealsConsumed[index]);
        }
    );
  }

  void provideMealsConsumed() {
    mealsConsumed.add(
        MealConsumed(
            mealAmount: '400',
            mealName: 'Breakfast',
            progressValue: 50,
            consumedFoods: [
              FoodConsumed(
                foodName: 'coffee',
                consumedAmount: '30 ml',
                boxColor: Colors.orange[100],
                icon: SvgPicture.asset(
                    'images/coffee.svg',
                    width: 25.w,
                    height: 25.w
                ),
              ),
              FoodConsumed(
                foodName: 'Bread',
                consumedAmount: '100 gm',
                boxColor: Colors.orange[100],
                icon: SvgPicture.asset(
                    'images/bread.svg',
                    width: 25.w,
                    height: 25.w
                ),
              )
            ]
        )
    );

    mealsConsumed.add(
        MealConsumed(
            mealAmount: '350',
            mealName: 'Lunch',
            progressValue: 70,
            consumedFoods: [
              FoodConsumed(
                foodName: 'Chicken',
                consumedAmount: '200 gm',
                boxColor: Colors.orange[100],
                icon: SvgPicture.asset(
                    'images/chicken.svg',
                    width: 25.w,
                    height: 25.w
                ),
              ),
              FoodConsumed(
                foodName: 'Green salad',
                consumedAmount: '100 gm',
                boxColor: Colors.orange[100],
                icon: SvgPicture.asset(
                    'images/salad.svg',
                    width: 25.w,
                    height: 25.w
                ),
              )
            ]
        )
    );

    mealsConsumed.add(
        MealConsumed(
            mealAmount: '650',
            mealName: 'Dinner',
            progressValue: 30,
            textColor: Colors.deepOrange,
            consumedFoods: [
              FoodConsumed(
                foodName: 'Pasta & Sauce',
                consumedAmount: '150 g',
                boxColor: Colors.orange[100],
                icon: SvgPicture.asset(
                    'images/pasta.svg',
                    width: 25.w,
                    height: 25.w
                ),
              ),
            ]
        )
    );
  }
}