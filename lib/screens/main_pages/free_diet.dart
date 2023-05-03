import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/main_pages/bottom_bar.dart';
import 'package:health_tracker/screens/main_pages/home_page.dart';
import 'package:http/http.dart' as http;

class NutritionCalculator extends StatefulWidget {
  @override
  _NutritionCalculatorState createState() => _NutritionCalculatorState();
}

class _NutritionCalculatorState extends State<NutritionCalculator> {
  String name = "breakfast";
  String foodName = "";
  String serving_size_g = "";

  int calories = 0;
  int carbohydrates_total_g = 0;
  int fat_total_g = 0;
  int protein_g = 0;

  void _calculateNutrition() async {
    if (foodName.isEmpty || serving_size_g.isEmpty) {
      return;
    }

    final url =
        "https://api.api-ninjas.com/v1/nutrition?query=$name $serving_size_g grams $foodName";
    final headers = {"x-Api-Key": "I3sov+4Ec2CrXQK9mauAQQ==PzCNNH5swQ7U6yde"};

    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      setState(() {
        calories = 147;
        carbohydrates_total_g = 1;
        fat_total_g = 9;
        protein_g = 12;
      });
    } else {
      throw Exception("Failed to load nutrition data");
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Choose Meal:",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
              DropdownButton(
                value: name,
                onChanged: (value) {
                  setState(() {
                    name = value!;
                  });
                },
                items: [
                  DropdownMenuItem(
                    value: "breakfast",
                    child: Text("Breakfast"),
                  ),
                  DropdownMenuItem(
                    value: "lunch",
                    child: Text("Lunch"),
                  ),
                  DropdownMenuItem(
                    value: "dinner",
                    child: Text("Dinner"),
                  ),
                  DropdownMenuItem(
                    value: "snacks",
                    child: Text("Snacks"),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(12.h),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter food name",
                          border: InputBorder.none),
                      onChanged: (value) {
                        setState(() {
                          foodName = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.transparent),
                    borderRadius: BorderRadius.circular(12.h),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.w),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Enter grams of food",
                          border: InputBorder.none),
                      onChanged: (value) {
                        setState(() {
                          serving_size_g = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                child: Text("Calculate"),
                onPressed: _calculateNutrition,
              ),
              AspectRatio(
                aspectRatio: 2,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.h),
                      child: Container(
                        padding: EdgeInsets.all(10.h),
                        height: 118.h,
                        width: 125.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.h),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Calories",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp),
                            ),
                            Text(
                              "$calories",
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.h),
                      child: Container(
                        padding: EdgeInsets.all(20.h),
                        height: 118.h,
                        width: 125.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.h),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Carbs",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp),
                            ),
                            Text(
                              "$carbohydrates_total_g",
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 2,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15.h),
                      child: Container(
                        padding: EdgeInsets.all(20.h),
                        height: 118.h,
                        width: 125.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.h),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Fats",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp),
                            ),
                            Text(
                              "$fat_total_g",
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.h),
                      child: Container(
                        padding: EdgeInsets.all(20.h),
                        height: 118.h,
                        width: 125.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.h),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Protein",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.sp),
                            ),
                            Text(
                              "$protein_g",
                              style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                child: ElevatedButton(
                  onPressed: () {
                    final snackBar = SnackBar(content: Text('Food added successfully!'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Nav(),
                      ),
                    );
                  },
                  child: Text("ADD FOOD"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
