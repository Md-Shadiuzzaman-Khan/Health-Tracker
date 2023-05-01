import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  double _height = 160.0;
  double _weight = 60.0;
  double _bmi = 0.0;

  void _calculateBMI() {
    setState(() {
      _bmi = _weight / ((_height / 100) * (_height / 100));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(15.0.h),
                child: Center(
                  child: Text(
                    'Height (cm)',
                    style: TextStyle(fontSize: 20.0.sp, color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Slider(
              value: _height,
              min: 100.0.w,
              max: 220.0.w,
              onChanged: (newValue) {
                setState(() {
                  _height = newValue;
                });
              },
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 50.h,
              width: 500.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.h),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0.h),
                child: Center(
                  child: Text(
                    '${_height.round()} cm',
                    style: TextStyle(fontSize: 20.0.sp,),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0.h),
            Padding(
              padding: EdgeInsets.all(15.0.h),
              child: Text(
                'Weight (kg)',
                style: TextStyle(fontSize: 20.0.sp, color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ),
            Slider(
              value: _weight,
              min: 30.0.w,
              max: 150.0.w,
              onChanged: (newValue) {
                setState(() {
                  _weight = newValue;
                });
              },
            ),
            SizedBox(height: 10.h,),
            Container(
              height: 50.h,
              width: 500.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.h),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0.h),
                child: Center(
                  child: Text(
                    '${_weight.round()} kg',
                    style: TextStyle(fontSize: 20.0.sp),
                  ),
                ),
              ),
            ),
            SizedBox(height: 18.0.h),
            ElevatedButton(
              onPressed: _calculateBMI,
              child: Text('Calculate BMI'),
            ),
            SizedBox(height: 18.0.h),
            Container(
              height: 50.h,
              width: 500.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.h),
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0.h),
                child: Center(
                  child: Text(
                    'BMI: ${_bmi.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 20.0.sp, color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
