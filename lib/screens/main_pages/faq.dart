import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Faqs extends StatelessWidget {
  const Faqs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h,),
              Text("Why This App?", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25.sp),),
              SizedBox(height: 10.h,),
              Text("This app is for controlling your diet.", style: TextStyle(color: Colors.blue,fontSize: 18.sp),),
              SizedBox(height: 25.h,),
              Text("What is free diet chart?", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25.sp),),
              SizedBox(height: 10.h,),
              Text("Our AI system is generate a free diet chart for you.", style: TextStyle(color: Colors.blue,fontSize: 18.sp),),
              SizedBox(height: 25.h,),
              Text("What is pro diet chart?", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 25.sp),),
              SizedBox(height: 10.h,),
              Text("Our Expertise system is generate a free diet chart for you.", style: TextStyle(color: Colors.blue,fontSize: 18.sp),),
              SizedBox(height: 25.h,),
            ],
          ),
        ),
      ),
    );
  }
}
