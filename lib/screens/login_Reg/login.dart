import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/login_Reg/registration.dart';
import '../main_pages/bottom_bar.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
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
                                "images/Doctor's office.gif"
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
                Text(
                  "Health Tracker",
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rajdhani',
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.orangeAccent),
                      borderRadius: BorderRadius.circular(12.h),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.orangeAccent),
                      borderRadius: BorderRadius.circular(12.h),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder:
                            (context)=>Nav(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(20.h),
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(12.h),
                      ),
                      child: Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context)=>Register(),
                          ),
                        );
                      },
                      child: Text(" Register now",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Text("Forgot Password?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green
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
