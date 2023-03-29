import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:health_tracker/screens/welcome%20pages/page_one.dart';
import 'package:health_tracker/screens/welcome%20pages/page_three.dart';
import 'package:health_tracker/screens/welcome%20pages/page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import '../login_Reg/login.dart';
import '../login_Reg/registration.dart';

class WelcomeScreens extends StatelessWidget {
  WelcomeScreens({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // page view
          SizedBox(
            height: 500,
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
              dotHeight: 20,
              dotWidth: 20,
              spacing: 12,
              verticalOffset: 50,
              jumpScale: 3,
            ),
          ),
        ],
      ),
    );
  }
}
