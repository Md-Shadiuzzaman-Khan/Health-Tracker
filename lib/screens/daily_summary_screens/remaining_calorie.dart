import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/main_pages/bottom_bar.dart';

class CalorieCheckAdd extends StatelessWidget {
  const CalorieCheckAdd({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.w,
      margin: EdgeInsets.only(bottom: 20.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder:
                    (context)=>Nav(),
                ),
              );
            },
            child: Container(
                height: 40.w,
                width: 40.w,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50.w)
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