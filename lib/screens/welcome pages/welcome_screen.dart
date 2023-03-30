import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:health_tracker/screens/welcome%20pages/page_one.dart';
import 'package:health_tracker/screens/welcome%20pages/page_three.dart';
import 'package:health_tracker/screens/welcome%20pages/page_two.dart';
import 'package:health_tracker/utils/app_layout.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../login_Reg/login.dart';

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
            height: AppLayout.getHeight(500),
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
              dotHeight: AppLayout.getHeight(20),
              dotWidth: AppLayout.getWidth(20),
              spacing: AppLayout.getWidth(20),
              verticalOffset: AppLayout.getHeight(50),
              jumpScale: AppLayout.getHeight(5),
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
