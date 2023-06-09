import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodImage extends StatelessWidget {
  const FoodImage({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.w,
      margin: EdgeInsets.only(top: 20.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.w),
      ),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('images/pasta.jpg', fit: BoxFit.cover, height: 230.w, width: double.infinity,)
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
                margin: EdgeInsets.only(left: 15.w, bottom: 20.w,),
                child: Text(
                  'P A S T A',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold
                  ),
                )
            ),
          )
        ],
      ),
    );
  }
}