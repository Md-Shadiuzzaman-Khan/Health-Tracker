import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/login_Reg/login.dart';
import 'package:health_tracker/screens/welcome%20pages/page_one.dart';
import 'package:health_tracker/screens/welcome%20pages/page_three.dart';
import 'package:health_tracker/screens/welcome%20pages/page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeScreens extends StatelessWidget {
  WelcomeScreens({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          SizedBox(
            height: 510.h,
            child: PageView(
              controller: _controller,
              children: const [
                Page1(),
                Page2(),
                Page3(),
              ],
            ),
          ),

          // dot indicators
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: JumpingDotEffect(
              activeDotColor: Colors.deepOrange,
              dotColor: Colors.grey,
              dotHeight: 20.h,
              dotWidth: 20.w,
              spacing: 20.w,
              verticalOffset: 50.h,
              jumpScale: 5.h,
            ),
          ),
        ],
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
            MaterialPageRoute(builder:
            (context)=>Login(),
            ),
          );
        },
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.arrow_forward_rounded),
      ),
    );
  }
}
