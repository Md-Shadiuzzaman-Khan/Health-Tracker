import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/app_layout.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(AppLayout.getHeight(40)),
        child: Column(
          children: [
            Container(
              width: AppLayout.getWidth(310),
              height: AppLayout.getHeight(310),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                      "images/Healthy foods.gif"
                  ),
                ),
              ),
            ),
            SizedBox(
              height: AppLayout.getHeight(50),
            ),
            Text(
              'Make your diet Chart \n& Follow',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
