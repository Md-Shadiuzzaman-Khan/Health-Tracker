import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreenAppBar extends StatelessWidget {
  const HomeScreenAppBar({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.w,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 7.w),
                Text(
                  'Tue, 4 May',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold
                  ),
                )
              ]
          ),
          Container(
              height: 45.w,
              width: 45.w,
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15.w)
              ),
              child: Center(
                child: SvgPicture.asset(
                    'images/calendar.svg',
                    color: Colors.white,
                    width: 25.w,
                    height: 25.w
                ),
              )
          ),
        ],
      ),
    );
  }
}