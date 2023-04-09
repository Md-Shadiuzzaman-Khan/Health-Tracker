import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProDiet extends StatelessWidget {
  const ProDiet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Column(
                    children: [
                      Text("C H O O S E  Y O U R \nP R O  P L A N 👉",
                        style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepOrange
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      Container(
                        height: 50.h,
                        width: 500.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.h),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 15.h, left: 90.w),
                          child: Text("1 Month - 300 BDT",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.deepOrange,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Container(
                        height: 50.h,
                        width: 500.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.h),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 15.h, left: 90.w),
                          child: Text("3 Month - 800 BDT",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.deepOrange,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Container(
                        height: 50.h,
                        width: 500.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.h),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 15.h, left: 85.w),
                          child: Text("6 Month - 1500 BDT",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.deepOrange
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h,),
                      Container(
                        height: 50.h,
                        width: 500.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15.h),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 15.h, left: 80.w),
                          child: Text("12 Month - 2500 BDT",
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.deepOrange
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h,),
                      Center(
                        child: Text("Click on any plan and go to the payment page directly",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
