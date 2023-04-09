import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget statisticsTile({ Color ? progressColor, String ? title, FaIcon ? icon, double ? value, double ? progressPercent, String ? unitName }) {
  return Expanded(
    child: Container(
      padding: EdgeInsets.all(20.h),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25.h)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title!,
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.sp
                ),
              ),
              icon!,
            ],
          ),
          Row(
            children: [
              RotatedBox(
                quarterTurns: -1,
                child: LinearPercentIndicator(
                  width: 60.w,
                  animation: true,
                  lineHeight: 6,
                  animationDuration: 2500,
                  percent: progressPercent!,
                  barRadius: Radius.circular(3.w),
                  progressColor: progressColor!,
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.orangeAccent,
                ),
              ),
              SizedBox(width: 20.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value.toString(),
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 5.w),
                  Text(
                    unitName ?? 'kcal',
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 12.sp,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}