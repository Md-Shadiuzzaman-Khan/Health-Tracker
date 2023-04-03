import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../models/meal_consumed.dart';

Widget mealConsumedTile(MealConsumed mealConsumed) {
  return ConstrainedBox(
    constraints: BoxConstraints(
      maxHeight: double.infinity,
    ),
    child: Container(
      margin: EdgeInsets.only(top: 30.w, bottom: 30.w),
      padding: EdgeInsets.only(left: 10. w),
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
                        strokeWidth: 4.w,
                        value: mealConsumed.progressValue! / 100,
                        backgroundColor: Colors.orangeAccent,
                        valueColor: AlwaysStoppedAnimation < Color > (Colors.green),
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Text(
                      mealConsumed.mealName!,
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
                      mealConsumed.mealAmount!,
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(width: 1.w),
                    Text(
                      'kcal',
                      style: TextStyle(
                        color: Colors.orange,
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
            itemCount: mealConsumed.consumedFoods!.length,
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
                            color: Colors.green,
                            thickness: 2,
                          ),
                          SizedBox(width: 15.w),
                          Container(
                            height: 54.w,
                            width: 54.w,
                            decoration: BoxDecoration(
                                color: mealConsumed.consumedFoods![index].boxColor,
                                borderRadius: BorderRadius.circular(20.w)
                            ),
                            child: Center(
                                child: mealConsumed.consumedFoods![index].icon
                            ),
                          ),
                          SizedBox(width: 15.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                mealConsumed.consumedFoods![index].foodName!,
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5.w),
                              Text(
                                mealConsumed.consumedFoods![index].consumedAmount!,
                                style: TextStyle(
                                  color: Colors.orange,
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