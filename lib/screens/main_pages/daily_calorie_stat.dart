import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/stat_tile.dart';

class DailyCalorieStat extends StatelessWidget {
  const DailyCalorieStat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        margin: EdgeInsets.only(top: 18.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            statisticsTile(
                title: 'Total',
                icon: FaIcon(
                  FontAwesomeIcons.pizzaSlice,
                  color: Colors.deepOrange,
                ),
                progressColor: Colors.orange[900],
                value: 500,
                progressPercent: 0.4
            ),
            SizedBox(width: 15.w,),
            statisticsTile(
                title: 'Burned',
                icon: FaIcon(
                  FontAwesomeIcons.fire,
                  color: Colors.red,
                ),
                progressColor: Colors.red[900],
                value: 700,
                progressPercent: 0.7
            ),
          ],
        ),
      ),
    );
  }
}
