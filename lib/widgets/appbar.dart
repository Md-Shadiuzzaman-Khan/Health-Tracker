import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddFoodScreenAppBar extends StatelessWidget {
  const AddFoodScreenAppBar({
    Key ? key
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 100.w,
            color: Colors.transparent,
            child: Row(
              children: [
                Container(
                    height: 50.w,
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15.w)
                    ),
                    child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25.sp,
                        )
                    )
                ),
              ],
            ),
          ),
        ),
        Text(
          'Add new food',
          style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 100.w,
            color: Colors.transparent,
            child: Row(
              children: [
                Container(
                    height: 50.w,
                    width: 50.w,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(15.w)
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.calendar,
                        size: 20.sp,
                        color: Colors.white,
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}