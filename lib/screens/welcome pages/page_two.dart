import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

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
                        "images/Nike runner.gif"
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Track youself \ndaily',
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
