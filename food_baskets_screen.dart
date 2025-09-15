// lib/screens/service_screens/food_baskets_screen.dart
import 'package:flutter/material.dart';

class FoodBasketsScreen extends StatelessWidget {
  const FoodBasketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('توزيع السلل الغذائية'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'توزيع السلل الغذائية على الأسر المحتاجة',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(
              'assets/food_basket.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'نقوم بتجهيز وتوزيع سلل غذائية تحتوي على المواد الأساسية للأسر المعوزة بشكل دوري.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text('التبرع لهذا المشروع'),
            ),
          ],
        ),
      ),
    );
  }
}
