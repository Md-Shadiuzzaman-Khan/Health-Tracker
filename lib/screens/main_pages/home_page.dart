import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/main_pages/daily_calorie_stat.dart';
import 'package:health_tracker/screens/main_pages/meal_consumed.dart';

import 'daily_summary.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        margin: EdgeInsets.only(right: 15.w, left: 15.w, top: 15.h),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: const [
            DailySummary(),
            DailyCalorieStat(),
            MealConsumed(),
          ],
        ),
      ),
    );
  }
}
