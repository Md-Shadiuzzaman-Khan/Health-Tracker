import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/daily_summary_screens/remaining_calorie.dart';
import 'app_bar.dart';
import 'date.dart';
import 'meals_consumed.dart';

class DailySummaryDetailBody extends StatefulWidget {
  const DailySummaryDetailBody({
    Key ? key
  }): super(key: key);

  @override
  State < DailySummaryDetailBody > createState() => _DailySummaryDetailBodyState();
}

class _DailySummaryDetailBodyState extends State < DailySummaryDetailBody > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(right: 15.w, left: 15.w),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: const [
            DailySummaryDetailScreenAppBar(),
            Date(),
            MealsConsumed(),
            RemainingCalorie(),
          ],
        ),
      ),
    );
  }
}