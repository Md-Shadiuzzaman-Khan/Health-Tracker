import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

class NutritionCalculator extends StatefulWidget {
  @override
  _NutritionCalculatorState createState() => _NutritionCalculatorState();
}

class _NutritionCalculatorState extends State<NutritionCalculator> {
  String _meal = "breakfast";
  String _foodName = "";
  String _foodGrams = "";

  int _calories = 0;
  int _carbs = 0;
  int _fats = 0;
  int _protein = 0;

  void _calculateNutrition() async {
    if (_foodName.isEmpty || _foodGrams.isEmpty) {
      return;
    }

    final url =
        "https://api.api-ninjas.com/v1/nutrition?query=$_meal $_foodGrams grams $_foodName";
    final headers = {"x-Api-Key": "I3sov+4Ec2CrXQK9mauAQQ==PzCNNH5swQ7U6yde"};

    final response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      setState(() {
        _calories = data["calories"];
        _carbs = data["carbs"];
        _fats = data["fats"];
        _protein = data["protein"];
      });
    } else {
      throw Exception("Failed to load nutrition data");
    }
  }

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Choose Meal:"),
            DropdownButton(
              value: _meal,
              onChanged: (value) {
                setState(() {
                  _meal = value!;
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
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Food Name",
              ),
              onChanged: (value) {
                setState(() {
                  _foodName = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: "Enter grams of food",
              ),
              onChanged: (value) {
                setState(() {
                  _foodGrams = value;
                });
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _calculateNutrition,
              child: Text("Calculate"),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text("Calories: "),
                Text("$_calories"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text("Carbs: "),
                Text("$_carbs"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text("Fats: "),
                Text("$_fats"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text("Protein: "),
                Text("$_protein"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
