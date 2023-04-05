import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Date extends StatelessWidget {
  const Date({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10.w),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Today',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 7.w),
            Text(
              'Tue, 4 April',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 24. sp,
                  fontWeight: FontWeight.bold
              ),
            )
          ]
      ),
    );
  }
}