import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DailySummaryDetailScreenAppBar extends StatelessWidget {
  const DailySummaryDetailScreenAppBar({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        height: 80.w,
        color: Colors.transparent,
        child: Row(
          children: [
            Container(
                height: 40.w,
                width: 40.w,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15.w)
                ),
                child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 20.sp,
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}