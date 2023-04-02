import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../models/food_consumed.dart';
import 'package:health_tracker/models/model.dart';

class MealConsumed extends StatefulWidget {
  const MealConsumed({Key? key}) : super(key: key);

  @override
  State<MealConsumed> createState() => _MealConsumedState();
}

class _MealConsumedState extends State<MealConsumed> {
  List < FoodConsumed > consumedFoods = [];
  @override
  void didChangeDependencies() {
    provideConsumedFoods();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: double.infinity,
      ),
      child: Container(
        margin: EdgeInsets.only(top: 30.w, bottom: 30.w),
        padding: EdgeInsets.only(left: 10.w),
        child: Column(
          children: [
            SizedBox(
              height: 40.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 25.w,
                        width: 25.w,
                        child: CircularProgressIndicator(
                          strokeWidth: 5.w,
                          value: 0.6,
                          backgroundColor: Colors.orangeAccent,
                          valueColor: AlwaysStoppedAnimation < Color > (Colors.green),
                        ),
                      ),
                      SizedBox(width: 20.w),
                      Text(
                        'Breakfast',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '400',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      SizedBox(width: 1.w),
                      Text(
                        'kcal',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.w),
            ListView.builder(
              itemCount: consumedFoods.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 70.w,
                  margin: EdgeInsets.zero,
                  child: IntrinsicHeight(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            VerticalDivider(
                              color: Colors.orange,
                              thickness: 2,
                            ),
                            SizedBox(width: 15.w),
                            Container(
                              height: 54.w,
                              width: 54.w,
                              decoration: BoxDecoration(
                                  color: consumedFoods[index].boxColor,
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Center(
                                  child: consumedFoods[index].icon
                              ),
                            ),
                            SizedBox(width: 15.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  consumedFoods[index].foodName!,
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(height: 5.w),
                                Text(
                                  consumedFoods[index].consumedAmount!,
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            )
                          ]
                      )
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }


  void provideConsumedFoods() {
    consumedFoods.add(
        FoodConsumed(
          foodName: 'Coffee',
          consumedAmount: '30 ml',
          boxColor: Colors.white,
          image: Image.asset(
              "images/",
              width: 25.w,
              height: 25.w
          ),
        )
    );

    consumedFoods.add(
        FoodConsumed(
          foodName: 'Bread',
          consumedAmount: '100 gm',
          boxColor: Colors.white,
          image: Image.asset(
              "images/",
              width: 25.w,
              height: 25.w
          ),
        ),
    );
  }
}
