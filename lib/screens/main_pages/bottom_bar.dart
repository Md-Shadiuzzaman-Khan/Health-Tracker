import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_tracker/screens/main_pages/dashboard.dart';
import 'package:health_tracker/screens/main_pages/free_diet.dart';
import 'package:health_tracker/screens/main_pages/home_page.dart';
import 'package:health_tracker/screens/main_pages/pro_diet.dart';

class Nav extends StatefulWidget {
  const Nav({
    Key ? key
  }): super(key: key);

  @override
  _NavState createState() => _NavState();
}



class _NavState extends State < Nav > {

  int _currentIndex = 0;

  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final pages = [Homepage(), NutritionCalculator(), ProDiet(), Dashboard(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _currentIndex,
        onTap: changePage,
        dotIndicatorColor: _currentIndex == 0 ? Colors.deepOrange : Colors.deepOrange,
        borderRadius: 0,
        backgroundColor: Colors.white,
        enablePaddingAnimation: true,
        marginR: EdgeInsets.zero,
        paddingR: EdgeInsets.zero,
        items: [
          DotNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.house,
                size: 20.sp,
              ),
              selectedColor: Colors.blueAccent,
              unselectedColor: Colors.grey
          ),
          DotNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.chartLine,
                size: 20.sp,
              ),
              selectedColor: Colors.blueAccent,
              unselectedColor: Colors.grey,
          ),
          DotNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.productHunt,
                size: 20.sp,
              ),
              selectedColor: Colors.blueAccent,
              unselectedColor: Colors.grey,
          ),
          DotNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.user,
                size: 20.sp,
              ),
              selectedColor: Colors.blueAccent,
              unselectedColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}