import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.h),
          child: Column(
            children: [
              Container(
                width: 320.w,
                height: 290.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.h),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "images/Phone life.gif"
                        ),
                    ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Welcome to Health \nTracker',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue[800],
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
