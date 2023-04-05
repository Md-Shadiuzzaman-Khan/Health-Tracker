import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/main_pages/home_page.dart';

class ChangeAmount extends StatefulWidget {
  const ChangeAmount({
    Key ? key
  }): super(key: key);

  @override
  State < ChangeAmount > createState() => _ChangeAmountState();
}

class _ChangeAmountState extends State < ChangeAmount > {

  int amount = 160;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.w,
      margin: EdgeInsets.only(top: 30.w, left: 20.w, right: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 55.w,
            width: 140.w,
            padding: EdgeInsets.all(7.w),
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20.w)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      amount--;
                    });
                  },
                  child: Container(
                    width: 35.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.w)
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.minimize,
                          color: Colors.deepOrange,
                          size: 25.sp,
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  amount.toString() + 'g',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      amount++;
                    });
                  },
                  child: Container(
                    width: 35.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.w)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.deepOrange,
                          size: 20. sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 55.w,
            width: 140.w,
            padding: EdgeInsets.all(7.w),
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(20.w)
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder:
                        (context)=>Homepage(),
                    ),
                  );
                },
                child: Text(
                  'Apply',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}