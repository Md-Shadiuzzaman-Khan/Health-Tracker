import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../widgets/add_food_body.dart';

class RemainingCalorie extends StatelessWidget {
  const RemainingCalorie({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.w,
      margin: EdgeInsets.only(bottom: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 250.w,
            height: 40.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Remaining',
                      style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '1112',
                          style: TextStyle(
                              color: Colors.green[700],
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 5.w,),
                        Text(
                          'kcal',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                LinearPercentIndicator(
                  width: 250.w,
                  animation: true,
                  lineHeight: 6,
                  animationDuration: 2500,
                  percent: 0.8,
                  barRadius: Radius.circular(3.w),
                  progressColor: Colors.green,
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.orangeAccent,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder:
                    (context)=>AddFoodBody(),
                ),
              );
            },
            child: Container(
                height: 60.w,
                width: 60.w,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20.w)
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 27.sp,
                )
            ),
          )
        ],
      ),
    );
  }
}