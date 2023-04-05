import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/login_Reg/login.dart';
import 'package:health_tracker/screens/main_pages/pro_diet.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 80.w,
                      height: 70.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                              "images/Racetrack Runner.gif"
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20.w,),
                    Text("H E A L T H \nT R A C K E R",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange
                      ),
                    ),
                  ],
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
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: Text("Your Information",
                        style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.deepOrange
                    ),
                ),
                  ),
                ),
                SizedBox(height: 8.h,),
                Container(
                  height: 50.h,
                  width: 500.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.h),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: Text("Calculate BMI",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.deepOrange
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h,),
                Container(
                  height: 50.h,
                  width: 500.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.h),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context)=>ProDiet(),
                          ),
                        );
                      },
                      child: Text("Be a Pro User",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.deepOrange
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h,),
                Container(
                  height: 50.h,
                  width: 500.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.h),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: Text("FAQ",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.deepOrange
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 8.h,),
                Container(
                  height: 50.h,
                  width: 500.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.h),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context)=>Login(),
                          ),
                        );
                      },
                      child: Text("Log Out",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.green
                        ),
                      ),
                    ),
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
