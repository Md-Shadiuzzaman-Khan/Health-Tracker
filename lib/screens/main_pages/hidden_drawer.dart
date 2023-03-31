import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/main_pages/home_page.dart';
import 'package:health_tracker/screens/main_pages/pro_diet.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

import 'dashboard.dart';
import 'free_diet.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  
  @override
  void initState() {
    super.initState();
    
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'D A S H B O A R D',
            baseStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.h,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rajdhani',
            ),
            colorLineSelected: Colors.black,
            selectedStyle: TextStyle(
              color: Colors.black,
              fontSize: 25.h,
              fontWeight: FontWeight.w900,
              fontFamily: 'Rajdhani',
            )
        ),
        Dashboard(),
      ),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              name: 'H O M E',
              baseStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20.h,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Rajdhani',
              ),
              colorLineSelected: Colors.black,
              selectedStyle: TextStyle(
                color: Colors.black,
                fontSize: 25.h,
                fontWeight: FontWeight.bold,
                fontFamily: 'Rajdhani',
              )
          ),
          Homepage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'F R E E  D I E T  P L A N',
            baseStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.h,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rajdhani',
            ),
            colorLineSelected: Colors.black,
            selectedStyle: TextStyle(
              color: Colors.black,
              fontSize: 25.h,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rajdhani',
            )
        ),
        FreeDiet(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: 'P R O  D I E T  P L A N',
            baseStyle: TextStyle(
              color: Colors.black,
              fontSize: 20.h,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rajdhani',
            ),
            colorLineSelected: Colors.black,
            selectedStyle: TextStyle(
              color: Colors.black,
              fontSize: 25.h,
              fontWeight: FontWeight.bold,
              fontFamily: 'Rajdhani',
            )
        ),
        ProDiet(),
      ),
    ];
  }
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorAppBar: Colors.deepOrange,
      backgroundMenu: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "images/Doctor Cartoon GIF - Vector Characters.gif"
                      ),
      ),
      backgroundColorMenu: Colors.orange,
      screens: _pages,
      initPositionSelected: 0,
      enableShadowItensMenu: false,
      enableCornerAnimation: true,
      enableScaleAnimation: true,
      contentCornerRadius: 20.h,
      slidePercent: 65.h,
    );
  }
}
